import 'dart:async';
import 'dart:isolate';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'dart:developer' as developer;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:ruc/core/injectable/injectable.dart';
import 'package:ruc/core/services/service/crashlytics.dart';
import 'package:ruc/core/services/service/notification.dart' as notif;
import 'package:ruc/core/services/service/remote_config.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    developer.log('${bloc.runtimeType}', name: '$change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    developer.log(
      '${bloc.runtimeType}',
      error: error,
      stackTrace: stackTrace,
    );
  }
}

class Bootstrap {
  final FutureOr<Widget> Function() builder;

  Bootstrap({required this.builder}) {
    Bloc.observer = AppBlocObserver();
    _initConfig();
  }

  Future<void> _initConfig() async {
    getIt<Crashlytics>().init();

    //inicializamos la capa push
    if (!kIsWeb) {
      //configuracion que captura los mensajes en onbackground
      getIt<notif.Notification>().onBackgroundReceived();
      //Configuracion para iniciar el push
      await getIt<notif.Notification>().pushInit();
      //Configuracion en onForeground
      await getIt<notif.Notification>().onReceived();
      //Configuracion para suscribirse a un topico
      await getIt<notif.Notification>().subscribeTopic();
      //Configuracion para obtener el Token
      final pushToken = await getIt<notif.Notification>().getToken();

      developer.log('PUSH TOKEN $pushToken');
    }
    //Inicializamos las configuraciones remotas
    await getIt<RemoteConfig>().initRemote();

    HydratedBloc.storage = await HydratedStorage.build(
        storageDirectory: kIsWeb
            ? HydratedStorage.webStorageDirectory
            : await getApplicationDocumentsDirectory());

    PlatformDispatcher.instance.onError = (error, stack) {
      getIt<Crashlytics>().recordError(error, stack);
      return true;
    };

    Isolate.current.addErrorListener(RawReceivePort((pair) async {
      final List<dynamic> errorAndStacktrace = pair;
      getIt<Crashlytics>().recordError(
        errorAndStacktrace.first,
        errorAndStacktrace.last,
      );
    }).sendPort);

    await SystemChrome.setPreferredOrientations(
      const <DeviceOrientation>[DeviceOrientation.portraitUp],
    ).then((value) async => runApp(await builder()));
  }
}

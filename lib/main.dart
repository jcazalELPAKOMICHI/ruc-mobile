import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ruc/core/injectable/injectable.dart';
import 'package:ruc/core/services/firebase_manager.dart';
import 'package:ruc/core/services/service/crashlytics.dart';
import 'package:ruc/main/app.dart';
import 'package:ruc/main/bootstrap.dart';

void main() async {
  configureDependencies();

  runZonedGuarded<Future<void>>(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
    FirebaseManager();
    Bootstrap(builder: () => const App());
  }, (error, stack) {
    getIt<Crashlytics>().recordError(error, stack);
  });
}

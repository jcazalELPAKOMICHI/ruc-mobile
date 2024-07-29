import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:ruc/core/extensions/theme_extension.dart';
import 'package:ruc/core/injectable/injectable.dart';
import 'package:ruc/core/themes/bloc/theme_bloc.dart';
import 'package:ruc/core/themes/theme.dart';
import 'package:ruc/features/ruc/presentation/bloc/ruc_bloc.dart';
import 'package:ruc/features/ruc/presentation/view/ruc_page.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt.get<RucBloc>()),
        BlocProvider(create: (context) => getIt.get<ThemeBloc>())
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            splitScreenMode: true,
            child: GlobalLoaderOverlay(
              overlayColor: Colors.black.withOpacity(0.5),
              useDefaultLoading: false,
              switchInCurve: Curves.bounceIn,
              switchOutCurve: Curves.bounceOut,
              overlayWidgetBuilder: (progress) => const Center(
                child: CircularProgressIndicator(
                  color: Colors.blue,
                ),
              ),
              child: MaterialApp(
                debugShowCheckedModeBanner: false,
                builder: configurationScreen,
                theme:
                    state.isDarkMode ? AppThemes.darkMode : AppThemes.lightMode,
                themeMode:
                    context.isDarkModeW ? ThemeMode.dark : ThemeMode.light,
                darkTheme: AppThemes.darkMode,
                localizationsDelegates: AppLocalizations.localizationsDelegates,
                home: const RucPage(),
                locale: const Locale('es', 'ES'),
                supportedLocales: const [
                  Locale('en', 'EN'), // English
                  Locale('es', 'ES'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget configurationScreen(BuildContext context, Widget? child) {
    final mediaQueryData = MediaQuery.of(context);
    final scale = mediaQueryData.textScaler.clamp(
      minScaleFactor: 0.8,
      maxScaleFactor: 1.1,
    );
    return MediaQuery(
      data: mediaQueryData.copyWith(
        textScaler: scale,
      ),
      child: child!,
    );
  }
}

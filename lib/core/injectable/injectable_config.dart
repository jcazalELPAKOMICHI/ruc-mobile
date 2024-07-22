import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ruc/core/injectable/injectable_config.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
  generateForDir: ['lib/core/injectable'], // default
)
void configureDependencies() => getIt.init();

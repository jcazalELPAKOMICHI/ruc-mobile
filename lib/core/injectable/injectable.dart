import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:ruc/core/injectable/injectable.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true,
)
@InjectableInit(generateForDir: ['lib/core/injectable'])
void configureDependencies() => getIt.init();

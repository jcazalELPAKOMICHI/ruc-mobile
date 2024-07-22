import 'package:injectable/injectable.dart';
import 'package:ruc/core/api/ic_config.dart';

@Injectable(as: IConfig)
class IConfigIml implements IConfig {
  @override
  String get baseUrl => 'https://turuc.com.py/';

  @override
  Map<String, String> get headers => {
        'Content-Type': 'application/json',
        'accept': 'application/json',
      };
}

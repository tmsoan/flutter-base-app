import 'package:shared/shared.dart';

import '../di/di.dart' as di;

class DataConfig extends Config {
  factory DataConfig.getInstance() {
    return _instance;
  }

  DataConfig._();

  static final DataConfig _instance = DataConfig._();

  @override
  Future<void> config() async => di.configureInjection();
}

import 'package:domain/domain.dart';
import 'package:shared/shared.dart';
import 'package:data/data.dart';

class LoginInteractor {
  final Repository _repository = RepositoryImpl();

  void testLogin() {
    kEZLogger.i('LoginInteractor >>> testLogin()');
    kEZLogger.i('Then call `data layer`');
    _repository.login("email-soan", "password-123456");
  }
}
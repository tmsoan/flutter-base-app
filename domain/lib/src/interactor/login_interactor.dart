
import 'package:shared/shared.dart';
import 'package:data/data.dart';

class LoginInteractor {

  void testLogin() {
    kEZLogger.i('LoginInteractor >>> testLogin()');
    kEZLogger.i('Then call `data layer`');
    RepositoryImpl().login("email-soan", "password-123456");
  }
}
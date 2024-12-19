
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import 'package:shared/shared.dart';
import 'package:data/data.dart';

@singleton
@injectable
class LoginInteractor {
  final Repository _repository = RepositoryImpl();

  void testLogin() {
    kEZLogger.i('LoginInteractor >>> testLogin()');
    kEZLogger.i('Then call `data layer`');
    _repository.login("email-soan", "password-123456");
  }
}
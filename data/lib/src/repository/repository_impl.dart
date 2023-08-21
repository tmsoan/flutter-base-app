import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

class RepositoryImpl implements Repository {
  @override
  Future<void> login(String email, String password) async {
    kEZLogger.e('`data layer` API calling...');
  }
}
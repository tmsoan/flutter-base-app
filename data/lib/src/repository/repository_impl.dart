import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:shared/shared.dart';

import '../../data.dart';

class RepositoryImpl implements Repository {
  final RestClient _restClient = RestClient(Dio());

  @override
  Future<void> login(String email, String password) async {
    kEZLogger.e('`data layer` API calling...');
    _restClient.getTasks().then((value) => {
      value.forEach((element) {kEZLogger.d(element.toJson());})
    });
  }
}
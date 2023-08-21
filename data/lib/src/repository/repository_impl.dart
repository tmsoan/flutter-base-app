import 'package:dio/dio.dart';
import 'package:domain/domain.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared/shared.dart';

import '../../data.dart';

class RepositoryImpl implements Repository {

  Dio _buildDioClient() {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90));
    return dio;
  }

  late RestClient _restClient = RestClient(
      _buildDioClient()
  );

  @override
  Future<void> login(String email, String password) async {
    kEZLogger.e('`data layer` API calling...');
    _restClient.getTasks().then((value) => kEZLogger.d(value));
  }

  @override
  Future<List<TaskData>> getTasks() async {
    kEZLogger.e('`data layer` API calling...');
    return await _restClient.getTasks();
  }
}
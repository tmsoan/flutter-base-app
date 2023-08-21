
import 'package:data/data.dart';

abstract class Repository {
  Future<void> login(String email, String password);
  Future<List<TaskData>> getTasks();
}
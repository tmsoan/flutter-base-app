
import '../../data.dart';
import '../model/task_data.dart';

class TaskDao implements Dao<TaskData> {
  @override
  // TODO: implement createTableQuery
  String get createTableQuery => throw UnimplementedError();

  @override
  List<TaskData> fromList(List<Map<String, dynamic>> query) {
    // TODO: implement fromList
    throw UnimplementedError();
  }

  @override
  TaskData fromMap(Map<String, dynamic> query) {
    // TODO: implement fromMap
    throw UnimplementedError();
  }

  @override
  Map<String, dynamic> toMap(TaskData obj) {
    // TODO: implement toMap
    throw UnimplementedError();
  }

}
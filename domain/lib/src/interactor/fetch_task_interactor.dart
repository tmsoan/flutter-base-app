
import 'package:data/data.dart';
import 'package:domain/domain.dart';

class FetchTasksIntractor {
  final Repository _repository = RepositoryImpl();

  Future<List<Task>> getTasks() async {
    final tasksData = await _repository.getTasks();
    return TaskDataMapper().mapToEntities(tasksData);
  }
}
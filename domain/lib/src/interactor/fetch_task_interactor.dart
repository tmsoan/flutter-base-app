
import 'package:data/data.dart';
import 'package:domain/domain.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

@singleton
@injectable
class FetchTasksIntractor {
  final Repository _repository = GetIt.I<RepositoryImpl>();

  Future<List<Task>> getTasks() async {
    final tasksData = await _repository.getTasks();
    return TaskDataMapper().mapToEntities(tasksData);
  }
}
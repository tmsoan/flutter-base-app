
import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';
import '../../data.dart';

@injectable
class TaskDataMapper extends BaseDataMapper<TaskData, Task> with DataMapperMixin {

  @override
  Task mapToEntity(TaskData? data) {
    return Task(
      id: data?.id,
      name: data?.name,
      avatar: data?.avatar,
      createdAt: data?.createdAt,
    );
  }

  @override
  TaskData mapToData(Task entity) {
    return TaskData(
      id: entity.id,
      name: entity.name,
      avatar: entity.avatar,
      createdAt: entity.createdAt,
    );
  }
}

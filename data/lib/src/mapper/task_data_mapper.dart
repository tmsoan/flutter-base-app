
import 'package:domain/domain.dart';
import '../../data.dart';


class TaskDataMapper extends BaseDataMapper<TaskEntity, Task> with DataMapperMixin {

  @override
  Task mapToEntity(TaskEntity? data) {
    return Task(
      id: data?.id,
      name: data?.name,
      avatar: data?.avatar,
      createdAt: data?.createdAt,
    );
  }

  @override
  TaskEntity mapToData(Task entity) {
    return TaskEntity(
      id: entity.id,
      name: entity.name,
      avatar: entity.avatar,
      createdAt: entity.createdAt,
    );
  }
}


import 'package:json_annotation/json_annotation.dart';

part 'task_entity.g.dart';

///
/// [TaskEntity] used in the data layer
///
@JsonSerializable()
class TaskEntity {
  String? id;
  String? name;
  String? avatar;
  String? createdAt;

  TaskEntity({this.id, this.name, this.avatar, this.createdAt});

  factory TaskEntity.fromJson(Map<String, dynamic> json) => _$TaskEntityFromJson(json);

  Map<String, dynamic> toJson() => _$TaskEntityToJson(this);
}

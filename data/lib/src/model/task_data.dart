
import 'package:json_annotation/json_annotation.dart';

part 'task_data.g.dart';

///
/// [TaskData] used in the data layer
///
@JsonSerializable()
class TaskData {
  String? id;
  String? name;
  String? avatar;
  String? createdAt;

  TaskData({this.id, this.name, this.avatar, this.createdAt});

  factory TaskData.fromJson(Map<String, dynamic> json) => _$TaskDataFromJson(json);

  Map<String, dynamic> toJson() => _$TaskDataToJson(this);
}

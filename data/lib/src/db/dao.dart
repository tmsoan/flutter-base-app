
abstract class Dao<T> {
  /// create table query
  String get createTableQuery;

  /// mapping
  T fromMap(Map<String, dynamic> query);

  List<T> fromList(List<Map<String, dynamic>> query);

  Map<String, dynamic> toMap(T obj);
}
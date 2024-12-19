
/// map from data to entity
abstract class BaseDataMapper<R, E> {
  const BaseDataMapper();

  E mapToEntity(R? data);

  List<E> mapToEntities(List<R>? lstData) {
    return lstData?.map(mapToEntity).toList() ?? List.empty();
  }
}

/// Optional: if need map from entity to  data
mixin DataMapperMixin<R, E> on BaseDataMapper<R, E> {
  R mapToData(E entity);

  R? mapToNullableData(E? entity) {
    if (entity == null) {
      return null;
    }
    return mapToData(entity);
  }

  List<R>? mapToNullableListData(List<E>? entities) {
    return entities?.map(mapToData).toList();
  }

  List<R> mapToListData(List<E>? entities) {
    return mapToNullableListData(entities) ?? List.empty();
  }
}

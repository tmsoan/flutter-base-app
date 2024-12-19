
import 'package:domain/domain.dart';
import 'package:flutter_base_app/base/bloc/base_bloc_state.dart';


abstract class HomeState extends BaseBlocState {}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {
  final bool isShowLoading;

  HomeLoadingState(this.isShowLoading);
}

class HomeLoadedState extends HomeState {
  final List<Task>? tasks;

  HomeLoadedState(this.tasks);
}

class HomeErrorState extends HomeState {
  final String error;

  HomeErrorState(this.error);
}

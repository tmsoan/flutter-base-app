
import 'package:domain/domain.dart';
import 'package:flutter_base_app/base/bloc/base_bloc_state.dart';
import 'package:flutter_base_app/model/base_model.dart';


class HomeState extends BaseBlocState {
  HomeState({
    bool isLoading = false,
    List<Task>? tasks,
    String? error,
  });
}

// class HomePageInitialed extends HomeState {}
//
// class HomeLoadingState extends HomeState {
//   final bool isShowLoading;
//
//   const HomeLoadingState(this.isShowLoading);
// }
//
// class HomeLoadedState extends HomeState {
//   final List<Task>? tasks;
//
//   const HomeLoadedState(this.tasks);
// }
import 'dart:async';
import 'package:domain/domain.dart';
import 'package:flutter_base_app/ui/home/bloc/home_event.dart';
import 'package:flutter_base_app/ui/home/bloc/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../base/bloc/base_bloc.dart';

class HomeBloc extends BaseBloc<HomeEvent, HomeState> {
  final FetchTasksIntractor _fetchTasksIntractor;

  HomeBloc(this._fetchTasksIntractor) : super(HomeState()) {
    on<HomeFetchingEvent>(_onFetchingTasks);
    on<HomePullToRefreshEvent>(_onPullToRefreshTasks);
  }

  Future<void> _onFetchingTasks(HomeFetchingEvent event, Emitter<HomeState> emit) async {
    await _getTasks(emit: emit, isInitialLoad: true);
  }

  Future<void> _onPullToRefreshTasks(HomePullToRefreshEvent event, Emitter<HomeState> emit) async {

  }

  Future<void> _getTasks({
    required Emitter<HomeState> emit,
    required bool isInitialLoad,
    Future<void> Function()? doOnSubscribe,
    Future<void> Function()? doOnSuccessOrError,
  }) async {
    emit(HomeState(isLoading: isInitialLoad));
    final taskList = await _fetchTasksIntractor.getTasks();
    emit(HomeState(tasks: taskList));
  }
}
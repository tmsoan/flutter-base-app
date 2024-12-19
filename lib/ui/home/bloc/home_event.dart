
import '../../../base/bloc/base_bloc_event.dart';

abstract class HomeEvent extends BaseBlocEvent {
  const HomeEvent();
}

class HomeFetchingEvent extends HomeEvent {
  const HomeFetchingEvent();
}

class HomePullToRefreshEvent extends HomeEvent {
  const HomePullToRefreshEvent();
}

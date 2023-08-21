
import 'package:flutter_base_app/base/bloc/base_bloc_event.dart';
import 'package:flutter_base_app/base/bloc/base_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseBloc<E extends BaseBlocEvent, S extends BaseBlocState>
    extends Bloc<E, S> {
  BaseBloc(super.initialState);
}
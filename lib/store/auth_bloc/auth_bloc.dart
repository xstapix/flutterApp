import 'package:flutter_bloc/flutter_bloc.dart';

import './auth_event.dart';
import './auth_state.dart';
import '../../shared/api.dart';

class AuthBloc extends Bloc<AuthEvents, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<SetUserEvent>(_onSetUser);
  }

  _onSetUser(SetUserEvent event, Emitter<AuthState> emit) async {
    emit(AuthLoadedState(event.data, true));
  }

}

import 'package:flutter_bloc/flutter_bloc.dart';

import './favorite_event.dart';
import './favorite_state.dart';
import '../../shared/api.dart';

class FavoriteBloc extends Bloc<FavoriteEvents, FavoriteState> {
  FavoriteBloc() : super(FavoriteInitial()) {
    on<FavoriteInitEvent>(_onInit);
  }

  _onInit(FavoriteInitEvent event, Emitter<FavoriteState> emit) async {
    emit(FavoriteLoadingState());
    Map favorite = event.data['favorites'];
    Map viewed = event.data['viewed'];

    emit(FavoriteLoadedState(favorite, viewed));
  }

}

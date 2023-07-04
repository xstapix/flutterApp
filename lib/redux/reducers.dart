import './actions.dart';
import './app_state.dart';

AppState updateNumberReducer(AppState state, dynamic action) {
  if(action is UpdateNumberAction){
    action.number += 1;

    return AppState(
      number: state.number
    );
  }

  return state;
}
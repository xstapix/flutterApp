import 'package:flutter_bloc/flutter_bloc.dart';

import './materials_event.dart';
import './materials_state.dart';
import '../../shared/api.dart';

class MaterialsBloc extends Bloc<MaterialsEvents, MaterialsState> {
  MaterialsBloc() : super(MaterialsInitial()) {
    on<MaterialsInitEvent>(_onInit);
  }

  _onInit(MaterialsInitEvent event, Emitter<MaterialsState> emit) async {
    emit(MaterialsLoadingState());
    final materials = await getMaterials();

    emit(MaterialsLoadedState(materials));
  }

}

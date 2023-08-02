import './materials_bloc.dart';

abstract class MaterialsState {}

class MaterialsInitial extends MaterialsState {}

class MaterialsLoadedState extends MaterialsState {
 final List materials;

  MaterialsLoadedState(this.materials);
}
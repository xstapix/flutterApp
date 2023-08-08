import './favorite_bloc.dart';

abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteLoadingState extends FavoriteState {}
class FavoriteLoadedState extends FavoriteState {
 final Map favorite;
 final Map viewed;

  FavoriteLoadedState(this.favorite, this.viewed);
}
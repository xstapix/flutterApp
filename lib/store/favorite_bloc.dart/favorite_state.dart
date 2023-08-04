import './favorite_bloc.dart';

abstract class FavoriteState {}

class FavoriteInitial extends FavoriteState {}

class FavoriteLoadingState extends FavoriteState {}
class FavoriteLoadedState extends FavoriteState {
 final List favorite;

  FavoriteLoadedState(this.favorite);
}
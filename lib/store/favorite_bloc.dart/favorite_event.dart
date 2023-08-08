abstract class FavoriteEvents {

}

class FavoriteInitEvent extends FavoriteEvents {
  Map data;

  FavoriteInitEvent(this.data);
}
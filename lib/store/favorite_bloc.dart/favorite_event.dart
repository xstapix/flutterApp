abstract class FavoriteEvents {

}

class FavoriteInitEvent extends FavoriteEvents {
  var list;

  FavoriteInitEvent(this.list);
}
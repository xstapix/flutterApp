abstract class AuthEvents {

}

class SetUserEvent extends AuthEvents {
  Map data;

  SetUserEvent(this.data);
}


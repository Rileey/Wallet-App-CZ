import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class WallEFirebaseUser {
  WallEFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

WallEFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<WallEFirebaseUser> wallEFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<WallEFirebaseUser>((user) => currentUser = WallEFirebaseUser(user));

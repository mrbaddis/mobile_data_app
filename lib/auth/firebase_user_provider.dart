import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MobileDataPlansFirebaseUser {
  MobileDataPlansFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

MobileDataPlansFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MobileDataPlansFirebaseUser> mobileDataPlansFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MobileDataPlansFirebaseUser>(
            (user) => currentUser = MobileDataPlansFirebaseUser(user));

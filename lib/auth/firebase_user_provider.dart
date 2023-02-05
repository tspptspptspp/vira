import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class TutorialFirebaseUser {
  TutorialFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

TutorialFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<TutorialFirebaseUser> tutorialFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<TutorialFirebaseUser>(
      (user) {
        currentUser = TutorialFirebaseUser(user);
        return currentUser!;
      },
    );

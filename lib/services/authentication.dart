import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // signin function
  Future signIn(String email, String password) async {
    try {
      return await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print('sign in error message: $e');
    }
  }

  // create user with email and password
  Future createUserAccount(String email, String password) async {
    try {
      return await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } catch (e) {
      print('create account error message: $e');
    }
  }

  // log out
  Future<void> LogOut() {
    return _firebaseAuth.signOut();
  }
}

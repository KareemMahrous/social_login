import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Firebase Authentication instance
final FirebaseAuth _auth = FirebaseAuth.instance;
// Google Sign-In instance
final GoogleSignIn _googleSignIn = GoogleSignIn();

/// Signs out the user from Firebase and Google.
///
/// This effectively signs out the user from your application.
Future<void> signOut() async {

  await _auth.signOut();
  await _googleSignIn.signOut();
  log('User signed out');
}

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Firebase Authentication instance
final FirebaseAuth _auth = FirebaseAuth.instance;

// Google Sign-In instance
final GoogleSignIn _googleSignIn = GoogleSignIn();

/// Signs in the user using Google Sign-In.
Future<void> signInWithGoogle() async {
  try {
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    if (googleUser == null) {
      // The user canceled the sign-in
      return;
    }

    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final response = await _auth.signInWithCredential(credential);
    //TODO: do something with response

    log('''User signed in with Google 
      displayName: ${googleAuth.idToken}\n
      uid: ${response.user!.uid}\n
      email: ${response.user!.email}\n
      ''');
  } catch (e) {
    // Log the error if sign-in fails
    log(e.toString());
  }
}

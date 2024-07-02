import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';

/// Registers a new user with the given email and password using Firebase Authentication.
///
/// This function creates a new user account with the specified email and password. If the registration
/// is successful, it logs the email of the registered user. If there is an error during registration,
/// it logs the error message.
///
/// [email] is the email address of the user to be registered.
/// [password] is the password for the user account.

void registerWithEmailAndPassword(
    {required String email, required String password}) async {
  final FirebaseAuth auth = FirebaseAuth.instance;

  try {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    log("Done \n${userCredential.user!.email}");
    // TODO: Do something after successful registration
  } on FirebaseAuthException catch (e) {
    log(e.message.toString());
  }
}

/// Signs in an existing user with the given email and password using Firebase Authentication.
///
/// This function signs in a user with the specified email and password. If the sign-in
/// is successful, it logs the email of the signed-in user. If there is an error during sign-in,
/// it logs the error message.
///
/// [email] is the email address of the user to be signed in.
/// [password] is the password for the user account.

void signInWithEmailAndPassword(
    {required String email, required String password}) async {
  final FirebaseAuth auth = FirebaseAuth.instance;

  try {
    UserCredential userCredential = await auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    log("Done \n${userCredential.user!.email}");
    // TODO: Do something after successful login
  } on FirebaseAuthException catch (e) {
    log(e.message.toString());
  }
}

import 'dart:convert';
import 'dart:math';
import 'dart:developer' as dev;

import 'package:crypto/crypto.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';

// Firebase Authentication instance
final FirebaseAuth _auth = FirebaseAuth.instance;

/// Signs in the user using Apple Sign-In.
Future<void> signInWithApple() async {
  try {
    final rawNonce = _generateNonce();
    final nonce = _sha256ofString(rawNonce);

    final appleCredential = await SignInWithApple.getAppleIDCredential(
      scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName,
      ],
      nonce: nonce,
    );

    final oAuthProvider = OAuthProvider('apple.com');
    final credential = oAuthProvider.credential(
      idToken: appleCredential.identityToken,
      rawNonce: rawNonce,
    );

    final response = await _auth.signInWithCredential(credential);
    //TODO: do something with response
    response.user!.displayName;

    dev.log('User signed in with Apple');
  } on SignInWithAppleAuthorizationException catch (e) {
    // Log the error if Apple sign-in fails
    dev.log(e.toString());
  } catch (e) {
    // Log other errors
    dev.log('Error during Apple sign-in: $e');
  }
}

/// Generates a cryptographically secure random nonce.
///
/// [length] is the length of the generated nonce. Defaults to 32.
/// Returns a randomly generated string.
String _generateNonce([int length = 32]) {
  const charset =
      '0123456789ABCDEFGHIJKLMNOPQRSTUVXYZabcdefghijklmnopqrstuvwxyz-._';
  final random = Random.secure();
  return List.generate(length, (_) => charset[random.nextInt(charset.length)])
      .join();
}

/// Generates a SHA-256 hash of the given [input] string.
///
/// Returns the SHA-256 hash as a string.
String _sha256ofString(String input) {
  final bytes = utf8.encode(input);
  final digest = sha256.convert(bytes);
  return digest.toString();
}

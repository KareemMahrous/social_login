import 'package:flutter/material.dart';

import '../methods/apple_sign_in_method.dart';
import '../methods/google_sign_in_method.dart';
import '../methods/sign_in_with_email_and_password.dart';
import '../methods/sign_out_method.dart';
import 'register_page.dart';

/// A Flutter widget that provides a login screen with options to sign in
/// using Firebase, Google or Apple accounts, and a sign-out option.
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  /// Controllers for the email and password text fields
  late TextEditingController _emailController;
  late TextEditingController _passwordController;

  @override
  void initState() {
    /// Initialize the email and password controllers
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(labelText: 'Email'),
                ),
                TextField(
                  controller: _passwordController,
                  decoration: const InputDecoration(labelText: 'Password'),
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  /// Call the signInWithEmailAndPassword method
                  onPressed: () => signInWithEmailAndPassword(
                      email: _emailController.text,
                      password: _passwordController.text),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    side: const BorderSide(color: Colors.grey),
                  ),
                  child: const Text('Login'),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    /// Navigate to the registration page
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegistrationPage()));
                  },
                  child: const Text('Don\'t have an account? Register here.'),
                ),
                const SizedBox(height: 100),
                ElevatedButton.icon(
                  /// Call the signInWithGoogle method
                  onPressed: signInWithGoogle,
                  icon: Image.asset('assets/google_logo.png',
                      height: 24, width: 24),
                  label: const Text('Sign in with Google'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                    side: const BorderSide(color: Colors.grey),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton.icon(
                  /// Call the signInWithApple method
                  onPressed: signInWithApple,
                  icon: const Icon(Icons.apple, color: Colors.black, size: 24),
                  label: const Text('Sign in with Apple'),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  /// Call the signOut method
                  onPressed: signOut,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.red,
                    backgroundColor: Colors.white,
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('Sign out'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

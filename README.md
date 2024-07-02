# Flutter Authentication Example

This is a simple Flutter application demonstrating authentication using Google, Apple, and Email/Password sign-in methods, integrated with Firebase Authentication.

## Features

- Google Sign-In
- Apple Sign-In
- Email/Password Sign-In
- Email/Password Registration
- Firebase Authentication Integration
- Sign-Out functionality

## Getting Started

### Prerequisites

- Flutter SDK: [Installation guide](https://flutter.dev/docs/get-started/install)
- Firebase account: [Firebase Console](https://console.firebase.google.com/)

### Setup Firebase

1. **Create a Firebase project**:
   - Go to the [Firebase Console](https://console.firebase.google.com/).
   - Click on "Add project" and follow the instructions.

2. **Add your Flutter app to the Firebase project**:
   - Register your app with Firebase by following the instructions for either Android or iOS (or both).
   - Download the `google-services.json` file for Android and place it in the `android/app` directory.
   - Download the `GoogleService-Info.plist` file for iOS and place it in the `ios/Runner` directory.

3. **Enable Authentication Methods**:
   - In the Firebase Console, go to the "Authentication" section.
   - Under the "Sign-in method" tab, enable "Email/Password", "Google", and "Apple".

### Add Firebase Packages to Your Flutter Project

Add the required dependencies to your `pubspec.yaml` file for Firebase core and authentication.

### Initialize Firebase in Your App

Initialize Firebase in your `main.dart` file to start using Firebase services in your app.

### Email/Password Authentication

#### Registration Page

Create a registration page that allows users to sign up using their email and password.

#### Login Page

Update your login page to include options for email/password login and navigation to the registration page.

### Helper Methods

Create helper methods to handle registration and sign-in using email and password with Firebase Authentication.

### Running the App

Once everything is set up, run your app on an emulator or a physical device to see the authentication features in action.
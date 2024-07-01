// File generated by FlutterFire CLI.
// ignore_for_file: type=lint

import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAdzRanSPtxUWXb9oDndjwDf6T8TZLJ-qA',
    appId: '1:1082948603078:web:931c2982508238e2149bc7',
    messagingSenderId: '1082948603078',
    projectId: 'third-party-auth-7f9b2',
    authDomain: 'third-party-auth-7f9b2.firebaseapp.com',
    storageBucket: 'third-party-auth-7f9b2.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAzNZVTdSyCAqBo7tnOrQq67nKOALbnHVI',
    appId: '1:1082948603078:android:eb517453befdd050149bc7',
    messagingSenderId: '1082948603078',
    projectId: 'third-party-auth-7f9b2',
    storageBucket: 'third-party-auth-7f9b2.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD0sgWZcPvj1vVv9Ni_9BW59RCvv0s-53k',
    appId: '1:1082948603078:ios:3a82b76bda8c5b27149bc7',
    messagingSenderId: '1082948603078',
    projectId: 'third-party-auth-7f9b2',
    storageBucket: 'third-party-auth-7f9b2.appspot.com',
    iosClientId: '1082948603078-1bsed40h3u4and07819o35fmriu2v85m.apps.googleusercontent.com',
    iosBundleId: 'com.example.thirdPartyAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD0sgWZcPvj1vVv9Ni_9BW59RCvv0s-53k',
    appId: '1:1082948603078:ios:3a82b76bda8c5b27149bc7',
    messagingSenderId: '1082948603078',
    projectId: 'third-party-auth-7f9b2',
    storageBucket: 'third-party-auth-7f9b2.appspot.com',
    iosClientId: '1082948603078-1bsed40h3u4and07819o35fmriu2v85m.apps.googleusercontent.com',
    iosBundleId: 'com.example.thirdPartyAuth',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAdzRanSPtxUWXb9oDndjwDf6T8TZLJ-qA',
    appId: '1:1082948603078:web:77487143660b15b7149bc7',
    messagingSenderId: '1082948603078',
    projectId: 'third-party-auth-7f9b2',
    authDomain: 'third-party-auth-7f9b2.firebaseapp.com',
    storageBucket: 'third-party-auth-7f9b2.appspot.com',
  );

}
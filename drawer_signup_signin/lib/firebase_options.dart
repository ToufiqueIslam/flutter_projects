// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyCDdf6lpF046AJzlHvm20X2sKuMVy4yWAs',
    appId: '1:445423449447:web:56ecc9043965e5a083ebc2',
    messagingSenderId: '445423449447',
    projectId: 'drawer-signin-signup',
    authDomain: 'drawer-signin-signup.firebaseapp.com',
    storageBucket: 'drawer-signin-signup.appspot.com',
    measurementId: 'G-6SQNLWFV34',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRhb0nPjCaKRRyQ0Aj_Fm_kNZo6H5N_Jg',
    appId: '1:445423449447:android:5f5d5d43e8a4ede983ebc2',
    messagingSenderId: '445423449447',
    projectId: 'drawer-signin-signup',
    storageBucket: 'drawer-signin-signup.appspot.com',
  );
}

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
    apiKey: 'AIzaSyAUGGIe5NfPEqKVeoRI28iCr4MZ5b83ZWc',
    appId: '1:45777704322:web:0dbd829d5fb5028cdc2b9b',
    messagingSenderId: '45777704322',
    projectId: 'expense-tracker-ad788',
    authDomain: 'expense-tracker-ad788.firebaseapp.com',
    storageBucket: 'expense-tracker-ad788.appspot.com',
    measurementId: 'G-6GSRQ2TMTF',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAP481nwLNu26yt70UwwQa1d_5b3PEMVhY',
    appId: '1:45777704322:android:b60c909527f60ab8dc2b9b',
    messagingSenderId: '45777704322',
    projectId: 'expense-tracker-ad788',
    storageBucket: 'expense-tracker-ad788.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB1qbpA8SUTNJ2h3gtwEDPwBtykIg7s3EI',
    appId: '1:45777704322:ios:cc834a81aa210ca5dc2b9b',
    messagingSenderId: '45777704322',
    projectId: 'expense-tracker-ad788',
    storageBucket: 'expense-tracker-ad788.appspot.com',
    iosBundleId: 'com.example.athangExpenseTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB1qbpA8SUTNJ2h3gtwEDPwBtykIg7s3EI',
    appId: '1:45777704322:ios:cc834a81aa210ca5dc2b9b',
    messagingSenderId: '45777704322',
    projectId: 'expense-tracker-ad788',
    storageBucket: 'expense-tracker-ad788.appspot.com',
    iosBundleId: 'com.example.athangExpenseTracker',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAUGGIe5NfPEqKVeoRI28iCr4MZ5b83ZWc',
    appId: '1:45777704322:web:a298fde56aa8e167dc2b9b',
    messagingSenderId: '45777704322',
    projectId: 'expense-tracker-ad788',
    authDomain: 'expense-tracker-ad788.firebaseapp.com',
    storageBucket: 'expense-tracker-ad788.appspot.com',
    measurementId: 'G-K9Z5PGK5DW',
  );
}

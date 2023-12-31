// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
    apiKey: 'AIzaSyD39yNlA-fqM-e7BQX0-cdNPf_wnQA6yVc',
    appId: '1:681941827846:web:402acd07935b02e6c5de87',
    messagingSenderId: '681941827846',
    projectId: 'budgettracker-bd40b',
    authDomain: 'budgettracker-bd40b.firebaseapp.com',
    storageBucket: 'budgettracker-bd40b.appspot.com',
    measurementId: 'G-SB1XH5Q38H',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBKFSYnloKznsCWLQXxv345w0pd44cqIZ0',
    appId: '1:681941827846:android:38aef181a232c45dc5de87',
    messagingSenderId: '681941827846',
    projectId: 'budgettracker-bd40b',
    storageBucket: 'budgettracker-bd40b.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDIa5YJWkqKONhTalS37SlRM5gYusaNTkM',
    appId: '1:681941827846:ios:fa9ed074f0b4b645c5de87',
    messagingSenderId: '681941827846',
    projectId: 'budgettracker-bd40b',
    storageBucket: 'budgettracker-bd40b.appspot.com',
    iosBundleId: 'com.example.budgetTracker',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDIa5YJWkqKONhTalS37SlRM5gYusaNTkM',
    appId: '1:681941827846:ios:327896327cf39278c5de87',
    messagingSenderId: '681941827846',
    projectId: 'budgettracker-bd40b',
    storageBucket: 'budgettracker-bd40b.appspot.com',
    iosBundleId: 'com.example.budgetTracker.RunnerTests',
  );
}

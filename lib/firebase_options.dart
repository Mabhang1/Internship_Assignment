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
    apiKey: 'AIzaSyDPuyaEIqsaVYUwXu1V4H0amJdRtcntpyg',
    appId: '1:547133686035:web:358848e736507dc64f5ae6',
    messagingSenderId: '547133686035',
    projectId: 'assignmentflutter1',
    authDomain: 'assignmentflutter1.firebaseapp.com',
    storageBucket: 'assignmentflutter1.appspot.com',
    measurementId: 'G-Y0K1X546D5',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD52pWeg7Cp9nwM9hZ9ejyIzgAy7A5ut3Q',
    appId: '1:547133686035:android:303fc6e849efe48b4f5ae6',
    messagingSenderId: '547133686035',
    projectId: 'assignmentflutter1',
    storageBucket: 'assignmentflutter1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCQUwdiHlD0-xM8k-lsbs--qZ_UFLQ6EaM',
    appId: '1:547133686035:ios:040f83ea753dae814f5ae6',
    messagingSenderId: '547133686035',
    projectId: 'assignmentflutter1',
    storageBucket: 'assignmentflutter1.appspot.com',
    iosBundleId: 'com.example.assignmentFlutter',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCQUwdiHlD0-xM8k-lsbs--qZ_UFLQ6EaM',
    appId: '1:547133686035:ios:a0cecbcb8af492b34f5ae6',
    messagingSenderId: '547133686035',
    projectId: 'assignmentflutter1',
    storageBucket: 'assignmentflutter1.appspot.com',
    iosBundleId: 'com.example.assignmentFlutter.RunnerTests',
  );
}

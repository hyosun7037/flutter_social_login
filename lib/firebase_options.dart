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
    apiKey: 'AIzaSyBldZIavgR78FogWXgUmfFFthBTGRQuPTk',
    appId: '1:336679485141:web:7baea5fff078e88f85ec5c',
    messagingSenderId: '336679485141',
    projectId: 'login-test-b8670',
    authDomain: 'login-test-b8670.firebaseapp.com',
    storageBucket: 'login-test-b8670.appspot.com',
    measurementId: 'G-XV890W4DZ3',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyATM03O2v7RtbM5VcAV0Ht5Oj0qKLRaNHQ',
    appId: '1:336679485141:android:bcd0c7fd3331876985ec5c',
    messagingSenderId: '336679485141',
    projectId: 'login-test-b8670',
    storageBucket: 'login-test-b8670.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4pOXBGuz7Kz_EWuMUZxuPIxv-pPgF1JI',
    appId: '1:336679485141:ios:3f03602c63f03f8485ec5c',
    messagingSenderId: '336679485141',
    projectId: 'login-test-b8670',
    storageBucket: 'login-test-b8670.appspot.com',
    iosClientId: '336679485141-4hht50kd4dcaq001p6ejofffj4cu6des.apps.googleusercontent.com',
    iosBundleId: 'com.flutter.kakaoTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4pOXBGuz7Kz_EWuMUZxuPIxv-pPgF1JI',
    appId: '1:336679485141:ios:f6a39ce9fb8ec20385ec5c',
    messagingSenderId: '336679485141',
    projectId: 'login-test-b8670',
    storageBucket: 'login-test-b8670.appspot.com',
    iosClientId: '336679485141-11fibr61tol76lnj8a25dt2niskutf2o.apps.googleusercontent.com',
    iosBundleId: 'com.example.kakaoTest',
  );
}
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
    apiKey: 'AIzaSyAqYCtwNNUKmorY6mI2WRM17smtD0MMF5A',
    appId: '1:13219338302:web:739e20e20e09fe0773596f',
    messagingSenderId: '13219338302',
    projectId: 'fir-test-89f19',
    authDomain: 'fir-test-89f19.firebaseapp.com',
    databaseURL: 'https://fir-test-89f19-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-89f19.appspot.com',
    measurementId: 'G-RRTBBFC6NN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAQFcZvGSCgauID0B66LgazYX2TvaS4878',
    appId: '1:13219338302:android:b9cafb217570973373596f',
    messagingSenderId: '13219338302',
    projectId: 'fir-test-89f19',
    databaseURL: 'https://fir-test-89f19-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-89f19.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDTD1o0e0vDPbJphb14vo7cRMpFgOD4SUg',
    appId: '1:13219338302:ios:f817a0d7c014161773596f',
    messagingSenderId: '13219338302',
    projectId: 'fir-test-89f19',
    databaseURL: 'https://fir-test-89f19-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-89f19.appspot.com',
    androidClientId: '13219338302-12d8anvva2g6a7ns4auqf59dr9upt34q.apps.googleusercontent.com',
    iosClientId: '13219338302-07vf078gsdc673vvbc6efoqeqos4pdu5.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTest',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDTD1o0e0vDPbJphb14vo7cRMpFgOD4SUg',
    appId: '1:13219338302:ios:492c0eb6b5cd739373596f',
    messagingSenderId: '13219338302',
    projectId: 'fir-test-89f19',
    databaseURL: 'https://fir-test-89f19-default-rtdb.firebaseio.com',
    storageBucket: 'fir-test-89f19.appspot.com',
    androidClientId: '13219338302-12d8anvva2g6a7ns4auqf59dr9upt34q.apps.googleusercontent.com',
    iosClientId: '13219338302-a5tn1fiqi9l0gq554h1rn0tpf9kd8pv9.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTest.RunnerTests',
  );
}

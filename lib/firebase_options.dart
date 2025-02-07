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
    apiKey: 'AIzaSyDJWzL1Fc4jNq2kcn69r1h4Y6NEa7KZJxo',
    appId: '1:825743236704:web:ae1a9a66a5b8ab79c66d05',
    messagingSenderId: '825743236704',
    projectId: 'ecomerce-6d782',
    authDomain: 'ecomerce-6d782.firebaseapp.com',
    storageBucket: 'ecomerce-6d782.appspot.com',
    measurementId: 'G-4PBC1Z1LBL',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyA5rOE3age8CBD6OSelITFJTHBODpRllkU',
    appId: '1:825743236704:android:7906767457a4fc30c66d05',
    messagingSenderId: '825743236704',
    projectId: 'ecomerce-6d782',
    storageBucket: 'ecomerce-6d782.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDXV2yqyMGHrkqCd_u0TWfR1n-2Ngm9YB8',
    appId: '1:825743236704:ios:822944d30b055ce3c66d05',
    messagingSenderId: '825743236704',
    projectId: 'ecomerce-6d782',
    storageBucket: 'ecomerce-6d782.appspot.com',
    iosBundleId: 'com.example.mechinetext',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDXV2yqyMGHrkqCd_u0TWfR1n-2Ngm9YB8',
    appId: '1:825743236704:ios:822944d30b055ce3c66d05',
    messagingSenderId: '825743236704',
    projectId: 'ecomerce-6d782',
    storageBucket: 'ecomerce-6d782.appspot.com',
    iosBundleId: 'com.example.mechinetext',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDJWzL1Fc4jNq2kcn69r1h4Y6NEa7KZJxo',
    appId: '1:825743236704:web:16d4732e4a948462c66d05',
    messagingSenderId: '825743236704',
    projectId: 'ecomerce-6d782',
    authDomain: 'ecomerce-6d782.firebaseapp.com',
    storageBucket: 'ecomerce-6d782.appspot.com',
    measurementId: 'G-WLC3XF2PHF',
  );
}

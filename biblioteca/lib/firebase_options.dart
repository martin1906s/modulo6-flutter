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
    apiKey: 'AIzaSyCsQzHn_y9JZjk7ANxcYZep062pZ4LIF1g',
    appId: '1:516769395838:web:b2989393d92ec7b8c8142f',
    messagingSenderId: '516769395838',
    projectId: 'biblioteca-b7813',
    authDomain: 'biblioteca-b7813.firebaseapp.com',
    storageBucket: 'biblioteca-b7813.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBEEa5nKN7E8LHeEm8OnFtWydx0ofGZ0Cw',
    appId: '1:516769395838:android:447a00b7ee4ae843c8142f',
    messagingSenderId: '516769395838',
    projectId: 'biblioteca-b7813',
    storageBucket: 'biblioteca-b7813.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyC4YW64DK_oeVa65mIr1DrV6RZT-yQVS9E',
    appId: '1:516769395838:ios:fd9f0d19cb9eded5c8142f',
    messagingSenderId: '516769395838',
    projectId: 'biblioteca-b7813',
    storageBucket: 'biblioteca-b7813.firebasestorage.app',
    iosBundleId: 'com.example.biblioteca',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyC4YW64DK_oeVa65mIr1DrV6RZT-yQVS9E',
    appId: '1:516769395838:ios:fd9f0d19cb9eded5c8142f',
    messagingSenderId: '516769395838',
    projectId: 'biblioteca-b7813',
    storageBucket: 'biblioteca-b7813.firebasestorage.app',
    iosBundleId: 'com.example.biblioteca',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCsQzHn_y9JZjk7ANxcYZep062pZ4LIF1g',
    appId: '1:516769395838:web:dba280e3de1cefecc8142f',
    messagingSenderId: '516769395838',
    projectId: 'biblioteca-b7813',
    authDomain: 'biblioteca-b7813.firebaseapp.com',
    storageBucket: 'biblioteca-b7813.firebasestorage.app',
  );
}

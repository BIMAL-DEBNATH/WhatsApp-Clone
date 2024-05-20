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
    apiKey: 'AIzaSyDftn50M-tmRmtyYGE65yFRxtzBzWbV7Ik',
    appId: '1:864180096151:web:aae6deb156f6eaa95a6dd2',
    messagingSenderId: '864180096151',
    projectId: 'chat-app-d675a',
    authDomain: 'chat-app-d675a.firebaseapp.com',
    databaseURL: 'https://chat-app-d675a-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-d675a.appspot.com',
    measurementId: 'G-Y6YD8X45WS',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBXNOzpeZbz7701_kwujhsxYPmHcm2wzuM',
    appId: '1:864180096151:android:c3acd3c83784bc2f5a6dd2',
    messagingSenderId: '864180096151',
    projectId: 'chat-app-d675a',
    databaseURL: 'https://chat-app-d675a-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-d675a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCy0PPsu5Fwpe-bFh-FJMaVa4VJTeBRTXg',
    appId: '1:864180096151:ios:f8279b9f68b8f82b5a6dd2',
    messagingSenderId: '864180096151',
    projectId: 'chat-app-d675a',
    databaseURL: 'https://chat-app-d675a-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-d675a.appspot.com',
    iosBundleId: 'com.example.chatsapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCy0PPsu5Fwpe-bFh-FJMaVa4VJTeBRTXg',
    appId: '1:864180096151:ios:61e6973d33f376285a6dd2',
    messagingSenderId: '864180096151',
    projectId: 'chat-app-d675a',
    databaseURL: 'https://chat-app-d675a-default-rtdb.firebaseio.com',
    storageBucket: 'chat-app-d675a.appspot.com',
    iosBundleId: 'com.example.chatsapp.RunnerTests',
  );
}

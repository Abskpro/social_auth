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
    apiKey: 'AIzaSyCfg01CnKqcM77fl9hDHaGksFH99HzZUiw',
    appId: '1:695904517922:web:e97bb05be52420ebdd2f7b',
    messagingSenderId: '695904517922',
    projectId: 'authentication-16192',
    authDomain: 'authentication-16192.firebaseapp.com',
    storageBucket: 'authentication-16192.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAqTRtThnRgjOpZeqPc13HRLRWlHiHuMQg',
    appId: '1:695904517922:android:229287207877a99cdd2f7b',
    messagingSenderId: '695904517922',
    projectId: 'authentication-16192',
    storageBucket: 'authentication-16192.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCUckHkOEzUUK8cB4vwr0He4WdU9eiiDGU',
    appId: '1:695904517922:ios:37d59efca76b8ef1dd2f7b',
    messagingSenderId: '695904517922',
    projectId: 'authentication-16192',
    storageBucket: 'authentication-16192.appspot.com',
    androidClientId: '695904517922-4sr3v4j5gkmq7icblefm0qm0qku54csj.apps.googleusercontent.com',
    iosClientId: '695904517922-ufo5e8kmif6mhqlaj0v2c4lgqdfj1pj5.apps.googleusercontent.com',
    iosBundleId: 'com.example.socialAuth',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCUckHkOEzUUK8cB4vwr0He4WdU9eiiDGU',
    appId: '1:695904517922:ios:37d59efca76b8ef1dd2f7b',
    messagingSenderId: '695904517922',
    projectId: 'authentication-16192',
    storageBucket: 'authentication-16192.appspot.com',
    androidClientId: '695904517922-4sr3v4j5gkmq7icblefm0qm0qku54csj.apps.googleusercontent.com',
    iosClientId: '695904517922-ufo5e8kmif6mhqlaj0v2c4lgqdfj1pj5.apps.googleusercontent.com',
    iosBundleId: 'com.example.socialAuth',
  );
}

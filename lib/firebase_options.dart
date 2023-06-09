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
    apiKey: 'AIzaSyALBXEPLa9QimSAHtt0fiUCDYW69dvxUiw',
    appId: '1:277134210992:web:e7c559c0bf15fb7817c875',
    messagingSenderId: '277134210992',
    projectId: 'tecnocropslogin',
    authDomain: 'tecnocropslogin.firebaseapp.com',
    storageBucket: 'tecnocropslogin.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAOcbmnuG_Xv-mxOpS0B41wvBPDalM6r98',
    appId: '1:277134210992:android:a812d398bd66cc0617c875',
    messagingSenderId: '277134210992',
    projectId: 'tecnocropslogin',
    storageBucket: 'tecnocropslogin.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAJRfB24R1kwBdbnRW4u6EHv47STB1nZ_k',
    appId: '1:277134210992:ios:602bdb56a5e8fb3417c875',
    messagingSenderId: '277134210992',
    projectId: 'tecnocropslogin',
    storageBucket: 'tecnocropslogin.appspot.com',
    iosClientId: '277134210992-eve0v1ebpl901j0so7k4m8vs5pe7j3ad.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFlutterApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAJRfB24R1kwBdbnRW4u6EHv47STB1nZ_k',
    appId: '1:277134210992:ios:602bdb56a5e8fb3417c875',
    messagingSenderId: '277134210992',
    projectId: 'tecnocropslogin',
    storageBucket: 'tecnocropslogin.appspot.com',
    iosClientId: '277134210992-eve0v1ebpl901j0so7k4m8vs5pe7j3ad.apps.googleusercontent.com',
    iosBundleId: 'com.example.loginFlutterApp',
  );
}

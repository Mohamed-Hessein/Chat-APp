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
    apiKey: 'AIzaSyCX8pi5xc1-O91vg6Jsg-QT-aRl2fl9FnM',
    appId: '1:276725820319:web:d78f23b91199aad360ebaa',
    messagingSenderId: '276725820319',
    projectId: 'chatzapp-f15c1',
    authDomain: 'chatzapp-f15c1.firebaseapp.com',
    storageBucket: 'chatzapp-f15c1.firebasestorage.app',
    measurementId: 'G-SYBXERQJRD',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVrdvAHHeZvL9coXtUvu35eyceA4PYdBA',
    appId: '1:276725820319:android:7f27a078361105d060ebaa',
    messagingSenderId: '276725820319',
    projectId: 'chatzapp-f15c1',
    storageBucket: 'chatzapp-f15c1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyClZHRyMkM2uiwzXfTA9Is6c34uSpIZrLY',
    appId: '1:276725820319:ios:e89919962fe88ff360ebaa',
    messagingSenderId: '276725820319',
    projectId: 'chatzapp-f15c1',
    storageBucket: 'chatzapp-f15c1.firebasestorage.app',
    iosBundleId: 'com.example.chatzapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyClZHRyMkM2uiwzXfTA9Is6c34uSpIZrLY',
    appId: '1:276725820319:ios:e89919962fe88ff360ebaa',
    messagingSenderId: '276725820319',
    projectId: 'chatzapp-f15c1',
    storageBucket: 'chatzapp-f15c1.firebasestorage.app',
    iosBundleId: 'com.example.chatzapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCX8pi5xc1-O91vg6Jsg-QT-aRl2fl9FnM',
    appId: '1:276725820319:web:cbcfabbc3dd7ed1860ebaa',
    messagingSenderId: '276725820319',
    projectId: 'chatzapp-f15c1',
    authDomain: 'chatzapp-f15c1.firebaseapp.com',
    storageBucket: 'chatzapp-f15c1.firebasestorage.app',
    measurementId: 'G-73CCB4YQB6',
  );
}

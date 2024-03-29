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
    apiKey: 'AIzaSyArMMFkfxHai666RW-IfgdhTMy2lqODVSk',
    appId: '1:94106662305:web:9a12d50b5f923bd83987e0',
    messagingSenderId: '94106662305',
    projectId: 'chatwithme-8eb75',
    authDomain: 'chatwithme-8eb75.firebaseapp.com',
    storageBucket: 'chatwithme-8eb75.appspot.com',
    measurementId: 'G-CX5G6PVNGX',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDRwVNvD5RfKaxw0Y1RpZ7ymw1f054AFKg',
    appId: '1:94106662305:android:0307a58c0307baca3987e0',
    messagingSenderId: '94106662305',
    projectId: 'chatwithme-8eb75',
    storageBucket: 'chatwithme-8eb75.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCNvMlLhHFQysFCNsFfD4kdmemJWEpe89o',
    appId: '1:94106662305:ios:2d078703d2fd3b7d3987e0',
    messagingSenderId: '94106662305',
    projectId: 'chatwithme-8eb75',
    storageBucket: 'chatwithme-8eb75.appspot.com',
    iosBundleId: 'com.example.chatapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCNvMlLhHFQysFCNsFfD4kdmemJWEpe89o',
    appId: '1:94106662305:ios:ff0abd19042a91063987e0',
    messagingSenderId: '94106662305',
    projectId: 'chatwithme-8eb75',
    storageBucket: 'chatwithme-8eb75.appspot.com',
    iosBundleId: 'com.example.chatapp.RunnerTests',
  );
}

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
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBRVOhO3zuANTqiHJUfD_N6zHy-W_t3pZA',
    appId: '1:438295634266:android:a1595c34ee4d1eae8a1363',
    messagingSenderId: '438295634266',
    projectId: 'sign-in-dff2d',
    databaseURL: 'https://sign-in-dff2d.firebaseio.com',
    storageBucket: 'sign-in-dff2d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDHmtEkEqyXnH8t3vcd51rldKCihsP4TK8',
    appId: '1:438295634266:ios:72a6ec663e1352648a1363',
    messagingSenderId: '438295634266',
    projectId: 'sign-in-dff2d',
    databaseURL: 'https://sign-in-dff2d.firebaseio.com',
    storageBucket: 'sign-in-dff2d.appspot.com',
    androidClientId: '438295634266-qh2quqhkgreloiu6lu6g310lc6dv9o84.apps.googleusercontent.com',
    iosClientId: '438295634266-7sjfnvf3m06f2m4vulpnmlrtqdbsgonm.apps.googleusercontent.com',
    iosBundleId: 'com.example.oriAdministrationBloc',
  );
}
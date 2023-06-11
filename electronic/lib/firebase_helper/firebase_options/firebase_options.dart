import 'dart:io';

import 'package:firebase_core/firebase_core.dart';

class DefaultFirebaseConfig {
  static FirebaseOptions get platformOptions {
    if (Platform.isIOS) {
      // iOS and MacOS
      return const FirebaseOptions(
        appId: '1:85183240452:ios:d2e29f05329fe703f29851',
        apiKey: 'AIzaSyBOZreHksLkHeL2cS2_2490y7AN5UWTVt0',
        projectId: 'electronic-70f41',
        messagingSenderId: '85183240452	',
        iosBundleId: 'com.example.electronic',
      );
    } else {
      // Android
      return const FirebaseOptions(
        appId: '1:85183240452:android:d2a0a05b28cefa3af29851',
        apiKey: 'AIzaSyCHXxAMW25jM-9VrMmLrfLxxmiJM6iM7Ck',
        projectId: 'electronic-70f41',
        messagingSenderId: '85183240452',
      );
    }
  }
}

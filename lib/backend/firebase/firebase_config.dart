import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCojTVIpQ3b8ZYvELqzCVpgVPFNRRzElcA",
            authDomain: "two-lips-rkeei8.firebaseapp.com",
            projectId: "two-lips-rkeei8",
            storageBucket: "two-lips-rkeei8.appspot.com",
            messagingSenderId: "15587819336",
            appId: "1:15587819336:web:dedb8173c02c81a8aafd7d"));
  } else {
    await Firebase.initializeApp();
  }
}

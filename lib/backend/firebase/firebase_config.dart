import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDrgxDGaFc11LYP3IZp87qYF-qloU74Lz0",
            authDomain: "vira-e7124.firebaseapp.com",
            projectId: "vira-e7124",
            storageBucket: "vira-e7124.appspot.com",
            messagingSenderId: "930610375070",
            appId: "1:930610375070:web:4e7491d8445fd356bd8e8f",
            measurementId: "G-ZGM92RYW4P"));
  } else {
    await Firebase.initializeApp();
  }
}

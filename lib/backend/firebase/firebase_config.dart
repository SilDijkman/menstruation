import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCjDGad8F0-iCrFv-kmr3g2O50Gd1zdXmo",
            authDomain: "menstrual-app.firebaseapp.com",
            projectId: "menstrual-app",
            storageBucket: "menstrual-app.appspot.com",
            messagingSenderId: "520182557568",
            appId: "1:520182557568:web:ecb752e01cb32a7b45af65",
            measurementId: "G-Y5883VS16X"));
  } else {
    await Firebase.initializeApp();
  }
}

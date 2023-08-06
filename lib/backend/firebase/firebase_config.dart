import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD2Zp56luA4Gy5V5UvJawTackfLHoaO3rQ",
            authDomain: "neunetics.firebaseapp.com",
            projectId: "neunetics",
            storageBucket: "neunetics.appspot.com",
            messagingSenderId: "743161390918",
            appId: "1:743161390918:web:7af81f699a89017bac6747",
            measurementId: "G-BRQDJR08KE"));
  } else {
    await Firebase.initializeApp();
  }
}

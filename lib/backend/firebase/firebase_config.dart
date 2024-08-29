import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD106UmjTGkV6Iq0VDLduT6t5pkldTYRPU",
            authDomain: "appescola-499ff.firebaseapp.com",
            projectId: "appescola-499ff",
            storageBucket: "appescola-499ff.appspot.com",
            messagingSenderId: "1047684337756",
            appId: "1:1047684337756:web:7c03dd1df8f3c35ea5d699"));
  } else {
    await Firebase.initializeApp();
  }
}

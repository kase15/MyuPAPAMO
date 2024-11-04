import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBLvvhMvFy3woAg39jp88FQ8YNG-m92AY4",
            authDomain: "rakumi-kcuvxo.firebaseapp.com",
            projectId: "rakumi-kcuvxo",
            storageBucket: "rakumi-kcuvxo.appspot.com",
            messagingSenderId: "909463445910",
            appId: "1:909463445910:web:ce72c381da4fee5855fdb7"));
  } else {
    await Firebase.initializeApp();
  }
}

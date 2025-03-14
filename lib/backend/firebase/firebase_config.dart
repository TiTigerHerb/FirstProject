import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB_8RwlJoRp39V8qeyjRoHGKVkH1x7udpw",
            authDomain: "simple-blog-bvqxfn.firebaseapp.com",
            projectId: "simple-blog-bvqxfn",
            storageBucket: "simple-blog-bvqxfn.firebasestorage.app",
            messagingSenderId: "657536040523",
            appId: "1:657536040523:web:458827139f36dc772f57ce"));
  } else {
    await Firebase.initializeApp();
  }
}

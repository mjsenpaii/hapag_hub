import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCvPrvjkTWeI5KHp5l3Mau8bIr7KjVBfO0",
            authDomain: "hapag-kc1x8w.firebaseapp.com",
            projectId: "hapag-kc1x8w",
            storageBucket: "hapag-kc1x8w.firebasestorage.app",
            messagingSenderId: "377603595102",
            appId: "1:377603595102:web:aa5745107fa86748550dcf"));
  } else {
    await Firebase.initializeApp();
  }
}

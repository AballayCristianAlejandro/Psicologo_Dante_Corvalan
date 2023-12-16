import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBAGaELqUrpjAZ8imuaKlAEeRGTtmgGny0",
            authDomain: "psicologiadantecorvalan.firebaseapp.com",
            projectId: "psicologiadantecorvalan",
            storageBucket: "psicologiadantecorvalan.appspot.com",
            messagingSenderId: "256245464939",
            appId: "1:256245464939:web:9db381f5549ebf928c962e"));
  } else {
    await Firebase.initializeApp();
  }
}

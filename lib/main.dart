import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'interfaz/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyARHy-x1yAkKPKf3AX7m3O_qrmpdX01bzE",
          authDomain: "reto-3-chat-de5a6.firebaseapp.com",
          projectId: "reto-3-chat-de5a6",
          storageBucket: "reto-3-chat-de5a6.appspot.com",
          messagingSenderId: "226598008641",
          appId: "1:226598008641:web:762757fcd8073a43f993c0",
          measurementId: "G-J3CVMTVD5Q"));
  runApp(const MyApp());
}

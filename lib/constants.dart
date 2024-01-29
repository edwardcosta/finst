import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finst/controller/auth/auth_controller.dart';
import 'package:finst/firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

AuthController authController = AuthController.instance;
final Future<FirebaseApp> firebaseInitialization = Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

enum NavigationIndex {
  home,
  profile,
  settings,
}

class AppColors {
  static Color backgound = const Color(0xFF1B1B1B);
  static Color canvas = const Color(0xFF2A2D3E);
  static Color textBody = const Color(0xFFF9F9F9);
}

class AppStrings {
  static String appName = 'Finst';
  static String navgiationHome = 'Home';
  static String navgiationSettings = 'Configurações';
  static String navgiationProfile = 'Perfil';
}

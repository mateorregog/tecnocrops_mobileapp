import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/features/authetication/screens/splash_screen/splash_screen.dart';
import 'package:login_flutter_app/src/features/authetication/screens/welcome/welcome_screen.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        //user is logged in
        if (snapshot.hasData) {
          return Dashboard();
        }
        //user is not logged in
        else {
          return SplashScreen();
        }
      },
    ));
  }
}

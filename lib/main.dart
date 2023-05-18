import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/firebase_options.dart';
import 'package:login_flutter_app/src/authetication_repository/authetication_repository.dart';
import 'package:login_flutter_app/src/features/authetication/screens/auth_page/auth_page.dart';
import 'package:login_flutter_app/src/features/authetication/screens/splash_screen/splash_screen.dart';
import 'package:login_flutter_app/src/utils/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //Asegurar que la inicialización de todos los widgets se realice
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'TecnoCrops',
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: const Duration(milliseconds: 300),
      home: AuthPage(),
    );
  }
}

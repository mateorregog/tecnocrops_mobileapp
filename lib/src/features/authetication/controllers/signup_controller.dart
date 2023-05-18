import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/user_repository.dart/user_repository.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  // Textfield controllers para obtener data de los TextFields
  //Text editing controller se utiliza para controlar el contenido de un TextField o un TextFormField.
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

  //final user = FirebaseAuth.instance.currentUser!;

  final userRepo = Get.put(UserRepository());

  // Función que será invocada desde el diseño screen
  void signUserIn() async {
    await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email.text,
      password: password.text,
    );
  }

  void userSingOut() {
    FirebaseAuth.instance.signOut();
  }
}

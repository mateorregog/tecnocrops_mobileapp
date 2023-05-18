import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authetication/controllers/signup_controller.dart';
import 'package:login_flutter_app/src/features/authetication/models/user_model.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(
        SignUpController()); /* se instancia la clase signupcontroller que tiene la logica del control de estado.  se utiliza en Flutter con la biblioteca GetX para crear e inyectar una instancia de una clase como una dependencia globalmente accesible en tu aplicación, lo que te permite compartir y reutilizar la misma instancia de clase en diferentes partes de la aplicación.*/
    final _formKey = GlobalKey<
        FormState>(); /*Proporciona una identificacion unica y permanente que puede ser utilizada para identificar y referirse a un widget desde cualquier parte.*/
    return Container(
      padding: const EdgeInsets.symmetric(vertical: tFormHeight - 10),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullName,
              decoration: const InputDecoration(
                label: Text(tFullName),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(tEmail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text(tPhoneNo),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                label: Text(tPassword),
                prefixIcon: Icon(Icons.password_outlined),
              ),
            ),
            const SizedBox(height: tFormHeight - 20),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  //controller.signUserIn();
                },
                child: Text(tSignUp.toUpperCase()),
              ),
            )
          ],
        ),
      ),
    );
  }
}

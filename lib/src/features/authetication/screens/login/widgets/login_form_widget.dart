import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authetication/screens/forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: tFormHeight - 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outline_outlined),
                  labelText: tEmail,
                  hintText: tEmail,
                  border: OutlineInputBorder()),
            ),
            const SizedBox(
              height: tFormHeight - 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.password),
                labelText: tPassword,
                hintText: tPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                ),
              ),
            ),
            const SizedBox(
              height: tFormHeight,
            ),

            //-Forget Password Button

            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    ForgetPasswordScreen.buildShowModalBottomSheet(context);
                  },
                  child: Text(tForgetPassword)),
            ),

            // -- Login Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () => Get.to(() => const Dashboard()),
                  child: Text(tLogin.toUpperCase())),
            )
          ],
        ),
      ),
    );
  }
}

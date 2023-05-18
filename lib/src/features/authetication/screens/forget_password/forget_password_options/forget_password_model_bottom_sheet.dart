import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authetication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import 'package:login_flutter_app/src/features/authetication/screens/forget_password/forget_password_options/forget_password_button_widget.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      builder: (context) => Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(tForgetPasswordTitle,
              style: Theme.of(context).textTheme.displaySmall),
          Text(tForgetPasswordSubTitle,
              style: Theme.of(context).textTheme.bodyMedium),
          const SizedBox(height: 30.0),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mail_outline_rounded,
            title: tEmail,
            subTitle: tResetViaEmail,
            onTap: () {
              Navigator.pop(context); //Cierra la pantalla actual
              Get.to(() =>
                  const ForgetPasswordMailScreen()); //Llama a siguente screen
            },
          ),
          const SizedBox(height: 30.0),
          ForgetPasswordBtnWidget(
            btnIcon: Icons.mobile_friendly_outlined,
            title: tPhoneNo,
            subTitle: tResetViaPhone,
            onTap: () {},
          )
        ]),
      ),
    );
  }
}

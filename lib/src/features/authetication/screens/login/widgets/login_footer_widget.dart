import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            icon: Image(
              image: const AssetImage(tGoogleLogoImage),
              width: 20.0,
            ),
            onPressed: () => {},
            label: Text(tSignInWithGoogle.toUpperCase()),
          ),
        ),
        const SizedBox(
          height: tFormHeight - 20,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(
            TextSpan(
                text: tDontHaveAnAccount,
                style: Theme.of(context).textTheme.bodyLarge,
                children: const [
                  TextSpan(
                    text: tSignUp,
                    style: TextStyle(color: Colors.blue),
                  )
                ]),
          ),
        )
      ],
    );
  }
}

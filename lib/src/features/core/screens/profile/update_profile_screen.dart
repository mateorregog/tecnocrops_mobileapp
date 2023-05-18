import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/features/authetication/models/user_model.dart';
import 'package:login_flutter_app/src/features/core/controllers/profile_controller.dart';

import 'widgets/profile_menu_widget.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(LineAwesomeIcons.angle_left)),
        title:
            Text(tProfile, style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDefaultSize),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image(
                                image: AssetImage(tProfileImage),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: tPrimaryColor,
                              ),
                              child: const Icon(LineAwesomeIcons.camera,
                                  size: 20.0, color: Colors.black),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 50),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              initialValue: userData.fullName,
                              decoration: const InputDecoration(
                                label: Text(tFullName),
                                prefixIcon: Icon(Icons.person_outline_rounded),
                              ),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                            TextFormField(
                              initialValue: userData.email,
                              decoration: const InputDecoration(
                                label: Text(tEmail),
                                prefixIcon: Icon(Icons.email_outlined),
                              ),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                            TextFormField(
                              initialValue: userData.phoneNo,
                              decoration: const InputDecoration(
                                label: Text(tPhoneNo),
                                prefixIcon: Icon(Icons.numbers),
                              ),
                            ),
                            const SizedBox(height: tFormHeight - 20),
                            TextFormField(
                              initialValue: userData.password,
                              decoration: const InputDecoration(
                                label: Text(tPassword),
                                prefixIcon: Icon(Icons.password_outlined),
                              ),
                            ),
                            const SizedBox(height: tFormHeight),
                            SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () => Get.to(
                                  () => const UpdateProfileScreen(),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: tPrimaryColor,
                                  side: BorderSide.none,
                                  shape: const StadiumBorder(),
                                ),
                                child: const Text(
                                  tEditProfile,
                                  style: TextStyle(color: tDarkColor),
                                ),
                              ),
                            ),
                            const SizedBox(height: tFormHeight),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text.rich(
                                  TextSpan(
                                      text: tJoined,
                                      style: TextStyle(fontSize: 12),
                                      children: [
                                        TextSpan(
                                          text: tJoinedAt,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        ),
                                      ]),
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Colors.redAccent.withOpacity(0.1),
                                      elevation: 0,
                                      foregroundColor: Colors.red,
                                      shape: const StadiumBorder(),
                                      side: BorderSide.none),
                                  child: const Text(tDelete),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text('Something went wrong'));
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}

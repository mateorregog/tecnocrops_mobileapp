import 'package:get/get.dart';
import 'package:login_flutter_app/src/authetication_repository/authetication_repository.dart';
import 'package:login_flutter_app/src/repository/user_repository.dart/user_repository.dart';

class ProfileController extends GetxController {
  static ProfileController get instance => Get.find();

  final _authRepo = Get.put(AuthenticationRepository());
  final _userRepo = Get.put(UserRepository());

  // Get user email and pass to user repositry to fetch user record

  getUserData() {
    final email = _authRepo.firebaseUser.value?.email;
    if (email != null) {
      return _userRepo.getUserDetails(email);
    } else {
      Get.snackbar("Error", "Login to continue");
    }
  }
}

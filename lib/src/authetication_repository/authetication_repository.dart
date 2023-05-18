import 'dart:ffi';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/authetication_repository/exceptions/signup_email_password_failure.dart';
import 'package:login_flutter_app/src/features/authetication/screens/welcome/welcome_screen.dart';
import 'package:login_flutter_app/src/features/core/screens/dashboard/dashboard.dart';

class AuthenticationRepository extends GetxController {
  //Esta línea de código permite acceder a una instancia de AuthenticationRepository en cualquier parte de la aplicación, simplemente llamando a AuthenticationRepository.instance. La librería GetX proporciona una manera de inyectar dependencias y acceder a instancias de clases en toda la aplicación, lo que facilita la gestión del estado y la navegación
  static AuthenticationRepository get instance => Get.find();

  //Variables relacionadas con firebase. Las que inician con _ son privadas
  final _auth = FirebaseAuth
      .instance; //Instancia de la clase firebase auth que proporciona metodos para la autenticacion de usuarios
  late final Rx<User?>
      firebaseUser; // late su valor se asignara mas tarde. RX>User?> observa cambios en el objeto. Rx que almacena un objeto de tipo User? que el tipo de usuario que devuelve FirebaseAuth

  @override
  void onReady() {
    firebaseUser =
        Rx<User?>(_auth.currentUser); // Se inicializa la variable firebaseUser
    firebaseUser.bindStream(_auth
        .userChanges()); //Vincula la Rx con un Stream de Firebase que emite eventos cada vez que se produce un cambio en la autenticación del usuario. Al hacer esto, firebaseUser se actualizará automáticamente cada vez que el usuario inicie o cierre sesión en la aplicación.
    ever(firebaseUser,
        _setInitialScreen); //Permite ejecutar una función cada vez que un objeto observado cambia.
  }

  // Se ejecuta cuando hay un cambio en la autenticacion de usuario. Toma un argumento user que es de tipo User?
  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => WelcomeScreen())
        : Get.offAll(() => const Dashboard());
  }

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      firebaseUser.value != null
          ? Get.offAll(() => const Dashboard())
          : Get.to(() => WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION - ${ex.message}');
      throw ex;
    } catch (_) {}
    final ex = SignUpWithEmailAndPasswordFailure();
    print('FIREBASE AUTH EXCEPTION - ${ex.message}');
    throw ex;
  }

  Future<void> loginWithEmailAndPassword(String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

  Future<void> logout() async => await _auth.signOut();
}

import 'package:firebase_auth/firebase_auth.dart';

class Autenticacion {
  final FirebaseAuth _fire = FirebaseAuth.instance;
  User? get usuarios => _fire.currentUser;
  Stream<User?> get estadologin => _fire.authStateChanges();

  Future<void> IniciarSesion({required String em, required String pass}) async {
    try {
      await _fire.signInWithEmailAndPassword(email: em, password: pass);
    } on FirebaseAuthException catch (e) {
      // TODO
      print(e.code);
    }
  }

  Future<void> CrearUsuario({required String em, required String pass}) async {
    try {
      await _fire.createUserWithEmailAndPassword(email: em, password: pass);
    } on FirebaseAuthException catch (e) {
      // TODO
      print(e.code);
    }
  }

  Future<void> CerrarSesion() async {
    try {
      await _fire.signOut();
    } on FirebaseAuthException catch (e) {
      // TODO
      print(e.code);
    }
  }
}

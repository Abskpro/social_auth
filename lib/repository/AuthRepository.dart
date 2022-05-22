import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;


class AuthRepository{
  FirebaseAuth? firebaseAuth;

  AuthRepository(){
    firebaseAuth = FirebaseAuth.instance;
  }

  Future<void> signInWithGoogle() async{
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;
    var client = http.Client();
    var url = Uri.parse('http://192.168.1.14:5000/store');
    var response = await client.post(
        url,
        body:  {'token': googleAuth?.idToken});

    // // Create a new credential
    // final credential = GoogleAuthProvider.credential(
    //   accessToken: googleAuth?.accessToken,
    //   idToken: googleAuth?.idToken,
    // );
    //
    // // Once signed in, return the UserCredential
    // return await FirebaseAuth.instance.signInWithCredential(credential);
  }
}

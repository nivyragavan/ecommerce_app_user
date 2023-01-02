import 'package:google_sign_in/google_sign_in.dart';

class GoogleSignInApi {
  static final googleSignIn = GoogleSignIn();

  static Future<GoogleSignInAccount?> login() {
    return googleSignIn.signIn();
  }

  static Future logout() {
    return googleSignIn.disconnect();
  }
}

import 'package:cats_app/screens/base_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class FBLogIn extends StatefulWidget {
  @override
  _FBLogInState createState() => new _FBLogInState();
}

class _FBLogInState extends State<FBLogIn> {
  static final FacebookLogin facebookSignIn = new FacebookLogin();
  String _message = 'Log in by pressing the buttons below.';

  Future<Null> _login() async {
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        _showMessage('''
         Logged in!
         
         Token: ${accessToken.token}
         User id: ${accessToken.userId}
         Expires: ${accessToken.expires}
         Permissions: ${accessToken.permissions}
         Declined permissions: ${accessToken.declinedPermissions}
         ''');
        break;
      case FacebookLoginStatus.cancelledByUser:
        _showMessage('Login cancelled by the user.');
        break;
      case FacebookLoginStatus.error:
        _showMessage('Something went wrong with the login process.\n'
            'Here\'s the error Facebook gave us: ${result.errorMessage}');
        break;
    }
  }

  void _showMessage(String message) {
    setState(() {
      _message = message;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseScreen();
  }
}

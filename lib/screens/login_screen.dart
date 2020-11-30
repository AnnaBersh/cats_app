import 'package:flutter/material.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';

class ScreenLogin extends StatelessWidget {
  static final FacebookLogin facebookSignIn = new FacebookLogin();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Cats App',
            style:
                TextStyle(color: Colors.black87, fontStyle: FontStyle.italic),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/3.jpg'), fit: BoxFit.cover)),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 180.0,
                  height: 50.0,
                  color: Colors.white,
                  child: TextButton(
                    child: Text('Login with \n Facebook',
                        style: TextStyle(
                            color: Colors.black87,
                            fontStyle: FontStyle.italic)),
                    onPressed: _login,
                  ),
                ),
                SizedBox(height: 30.0),
                Container(
                  width: 180.0,
                  height: 50.0,
                  color: Colors.white,
                  child: TextButton(
                    child: Text('Login with \n Google',
                        style: TextStyle(
                            color: Colors.black87,
                            fontStyle: FontStyle.italic)),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ));
  }

  Future<Null> _login() async {
    final FacebookLoginResult result = await facebookSignIn.logIn(['email']);

    switch (result.status) {
      case FacebookLoginStatus.loggedIn:
        final FacebookAccessToken accessToken = result.accessToken;
        //TODO сохранить данные о влогинивании + открыть экран
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
    print(message);
  }
}

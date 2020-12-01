import 'package:cats_app/screens/base_screen.dart';
import 'package:cats_app/screens/login_screen.dart';
import 'package:cats_app/screens/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: 'Cats App',
    //   home:SplashScreen()
    //       //BaseScreen()
    //       //ScreenLogin()

    // );
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        // if (snapshot.hasError) {
        //   return SomethingWentWrong();
        // }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(title: 'Cats App', home: ScreenLogin());
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return MaterialApp(title: 'Cats App', home: SplashScreen());
      },
    );
  }
}

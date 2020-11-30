import 'package:cats_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget widget = Scaffold(
      appBar: AppBar(
        title: Text(
          'Cats App',
          style: TextStyle(color: Colors.black87, fontStyle: FontStyle.italic),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/image/1.jpg'), fit: BoxFit.cover)),
      ),
    );
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ScreenLogin()));
    });
    return widget;
  }
}

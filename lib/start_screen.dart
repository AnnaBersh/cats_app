import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
  }
}

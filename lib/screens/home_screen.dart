import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text('HomeScreen'),
        elevation: 10.0,
      ),
      body: Center(
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Esto es una columna"),
            SizedBox(height: 50),
            Text("Esto es la misma columna")
          ],
        )
      ),
    );
  }

}
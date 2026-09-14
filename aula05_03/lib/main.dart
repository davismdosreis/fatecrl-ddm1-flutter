import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.deepPurple
        )
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text("Aula05_03 - Text"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.white,
          child: Center(
            child: Text(
              "Hello world, 5º SI!",
              style: TextStyle(
                fontSize: 25,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

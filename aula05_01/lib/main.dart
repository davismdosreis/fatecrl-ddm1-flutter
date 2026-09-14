import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue
        ),
      home: metodoHome(),
    );
  }

  Scaffold metodoHome(){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("5º. SI - Hello World"),
      ),
      body: Container(
        color: Colors.orange
      ),
      drawer: Container(
        color: Colors.amber
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Tooltip do botão",
        elevation: 5,
        hoverColor: Colors.blue,
        child: Text("+"),
        onPressed: (){}
      ),
    );
  }
}

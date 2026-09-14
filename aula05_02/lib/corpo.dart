import 'package:flutter/material.dart';

class WidgetHome extends StatelessWidget {
  const WidgetHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("5º. SI - Aula05_02"),
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
        hoverColor: Colors.red,
        child: Text("+"),
        onPressed: (){}
      ),
    );
  }
}
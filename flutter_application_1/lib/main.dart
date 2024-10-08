import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Test(),
  ));
}

class Test extends StatelessWidget {
  Test({super.key});
    Color color = Colors.green;
    Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        centerTitle: true,
        title: const Text("Sample"),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(onPressed: () {
            color = Colors.red;
          }, 
          style: ElevatedButton.styleFrom(
            backgroundColor: color
          ),
          child: const Text("Press")),
        ),
      ),
    );
  }
}

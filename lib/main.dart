import 'package:flutter/material.dart';
import 'package:new_app/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "OneAPP",
      theme: ThemeData(primaryColor: Colors.green),
      home: const HomePage(),
    );
  }

  // screenHome() {
  //   return Scaffold(
  //       appBar: AppBar(
  //         title: const Text("OneAPP"),
  //       ),
  //       body: Container(
  //         color: Colors.white,
  //         child: const Center(
  //           child: Text("Hello World"),
  //         ),
  //       ),
  //       drawer: Container(color: Colors.green),
  //       floatingActionButton: FloatingActionButton(
  //           onPressed: () {
  //             print("Hello World");
  //           },
  //           child: const Icon(Icons.add)));
  // }
}

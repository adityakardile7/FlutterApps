import 'package:flutter/material.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Container in Column"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(

          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 200,
                width:200,
                color: Colors.brown,
              ),
              Container(
                height: 200,
                width:200,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width:200,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

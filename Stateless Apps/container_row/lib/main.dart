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
          title: const Text("Container in Row"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(

          child: Row(
            mainAxisAlignment:MainAxisAlignment. center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                height: 200,
                width:100,
                color: Colors.brown,
              ),
              Container(
                height: 200,
                width:100,
                color: Colors.red,
              ),
              Container(
                height: 200,
                width:100,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

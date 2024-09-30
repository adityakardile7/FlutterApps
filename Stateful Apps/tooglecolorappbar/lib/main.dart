import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleColorApp());
}

class ToggleColorApp extends StatefulWidget {
  
  const ToggleColorApp({super.key});

  @override
  State createState()=> _ToggleColorAppState();
}
class _ToggleColorAppState extends State{
  bool colorChange=true;
  List changeColor=[Colors.pink,Colors.black,Colors.grey,Colors.orange,Colors.amber,Colors.blue, Colors.brown,Colors.red,Colors.blueAccent,Colors.lightGreen];
  int i=0;
  bool appBarColor=true;
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:const Text("Color Changing AppBar"),
          centerTitle: true,
          backgroundColor: (appBarColor)? Colors.orange:Colors.grey,
        ),
        body: Center(
          child: Container(
            height:250,
            width:250,
            color: changeColor[i],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(i<changeColor.length-1){
              i++;
             if(i%2==0){
              appBarColor=false;
             }
             else{
              appBarColor=true;
             }
            }
            else{
              i=0;
            }
            setState(() {});
          },
          backgroundColor: Colors.redAccent,
          child: const Text("New"),
        ),
      ),
    );
  }
}

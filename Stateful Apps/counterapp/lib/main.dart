import "package:flutter/material.dart";

void main(){
  runApp(const CounterApp());
}
class CounterApp extends StatefulWidget{
  const CounterApp({super.key});

  @override 
  State createState()=>_CounterAppState();
  
  }
  class _CounterAppState extends State{
    int cnt=0;
    @override 
    Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar:AppBar(
            title: const Text("Counter"),
            centerTitle: true,
            backgroundColor: Colors.deepOrangeAccent,
          ),
          body:Center(
            child: Text("$cnt",style:const TextStyle(fontSize: 25,fontWeight: FontWeight.w600)),
          ), 
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              cnt++;
              setState(() {});
            },
            backgroundColor: Colors.blueGrey,
            child:const Icon(Icons.add),
          ), 
        ),
      );
    }
  }
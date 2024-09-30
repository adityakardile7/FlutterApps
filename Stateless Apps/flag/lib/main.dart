

import "package:flutter/material.dart";

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
          appBar: AppBar(
          title:const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.amber,
          ),
          body:Center(

            child:Row(
             
              children:[ 
                const Padding(padding:EdgeInsets.fromLTRB(90.0, 0.0, 0.0, 0.0)),
                    Container(
                      height:500,
                      width:10,
                      color:Colors.grey,
                    ),
                Column(
                  children: [
                  const Padding(padding:EdgeInsets.fromLTRB(0.0, 130.0, 0.0, 0.0)),
                    Container(
                      height: 45,
                      width:250,
                      color:Colors.orange
                    ),
                    Container(
                      height: 45,
                      width:250,
                      color:Colors.white,
                      child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/300px-Ashoka_Chakra.svg.png")
                    ),
                    Container(
                      height: 45,
                      width:250,
                      color:Colors.green
                    ),
                  ],
                ),
            ],
          ),
          ),
        ),
      );
  }
}
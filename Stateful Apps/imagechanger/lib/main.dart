
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
      title : 'Players Wife',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.cyan),
        useMaterial3: true,
      ),
      home:const ImgChanger(),
    );
  }
}
class ImgChanger extends StatefulWidget{
  const ImgChanger({super.key});

  @override
  State createState()=>_ImgChangerState();
}
class _ImgChangerState extends State{
  List wifes=[
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgpjIlhKhS-aedr0sRQxs_Ny6xB-U3CdNLdQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhTwGeogaLfd4ialba7xI_uE-tKlsvXOlYMg&s",
    "https://assets.gqindia.com/photos/629453c2b52732df1f9bdff2/1:1/w_1080,h_1080,c_limit/Rohit%20Sharma.jpeg",
    "https://images.news18.com/ibnlive/uploads/2022/07/atiya-16576916024x3.jpg?impolicy=website&width=640&height=480",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRio0_eIvJq1yJ-PGLI96EO_1VOZSMudWzR_xDD5epuQCns_s-OwHP430FRyLD3rs6iT2w&usqp=CAU",
    "https://feeds.abplive.com/onecms/images/uploaded-images/2023/04/17/cf0321ece4efbee40b2278699488f9a94ca54.jpg?impolicy=abp_cdn&imwidth=720",
    "https://assets.gqindia.com/photos/668277812226f7d28e107b71/master/w_1600%2Cc_limit/Meet-Jasprit-Bumrah's-wife-Sanjana-Ganesan_003.jpg",
  ];
  int i=0;
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:const Text("Players Wife"),
        backgroundColor:Theme.of(context).colorScheme.inversePrimary,
      ),
      body:Center(
        child:SizedBox(
          height:400,
          width:400,
          child:Image.network(wifes[i]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if(i<wifes.length-1){
            i++;
          }
          else{
            i=0;
          }
          setState(() {});
        },
         backgroundColor: Colors.transparent,
         child:const Text("Next"),
      ),
     
    );
  }
}
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State {
  List<Map> allQuestion = [
    {
      "question": "Who was the captain of the Indian cricket team that won the ICC T20 World Cup in 2007?",
      "option": ["Rahul Dravid"," MS Dhoni"," Sourav Ganguly"," Virat Kohli"],
      "correctoption": 1
    },
    {
      "question": "Who is the first Indian to score a century in all three formats of cricket (Test, ODI, T20I)?",
      "option": ["KL Rahul"," Suresh Raina"," Rohit Sharma"," Virat Kohli"],
      "correctoption": 1
    },
    {
      "question": "Who was the Man of the Match in the final of the 2011 ICC Cricket World Cup?",
      "option": [" MS Dhoni","Sachin Tendulkar","Yuvraj Singh","Gautam Gambhir"],
      "correctoption": 0
    },
    {
      "question": "when will parth should loose his hair? ",
      "option": ["Doesnot Have Hairs", "Never", "In 1 year", "tommorow"],
      "correctoption": 1
    },
    {
      "question": "Who bowled the final over in the 2011 Cricket World Cup final between India and Sri Lanka?",
      "option": [" Lasith Malinga"," Nuwan Kulasekara"," Muttiah Muralitharan"," Angelo Mathews"],
      "correctoption": 1
    }
  ];
  int index = 0;
  int selAnsIndex = -1;

  WidgetStateProperty<Color?> checkedAns(int ansIndex) {
    if (selAnsIndex != -1) {
      if (ansIndex == allQuestion[index]['correctoption']) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selAnsIndex == ansIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  int score = 0;
  int scoreCount(int x) {
    if (x == allQuestion[index]['correctoption']) {
      score++;
    }
    return score;
  }

  bool quePage = true;
  @override
  Widget build(BuildContext context) {
    return isQueScreen();
  }

  Scaffold isQueScreen() {
    if (quePage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "QuizApp",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 26,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 115,
                ),
                Text(
                  "Questions ${index + 1}/${allQuestion.length}",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            //Question
            SizedBox(
              height: 70,
              width: 400,
              child: Text(
                allQuestion[index]["question"],
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Color.fromARGB(255, 46, 140, 187),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //option A
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkedAns(0),
                ),
                onPressed: () {
                  if (selAnsIndex == -1) {
                    selAnsIndex = 0;
                    scoreCount(selAnsIndex);
                    setState(() {});
                  }
                },
                child: Text(
                  "A. ${allQuestion[index]['option'][0]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 1, 2, 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //option B
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkedAns(1),
                ),
                onPressed: () {
                  if (selAnsIndex == -1) {
                    selAnsIndex = 1;
                    scoreCount(selAnsIndex);
                    setState(() {});
                  }
                },
                child: Text(
                  "B. ${allQuestion[index]['option'][1]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 1, 2, 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // option C
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkedAns(2),
                ),
                onPressed: () {
                  if (selAnsIndex == -1) {
                    selAnsIndex = 2;
                    scoreCount(selAnsIndex);
                    setState(() {});
                  }
                },
                child: Text(
                  "C.${allQuestion[index]['option'][2]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 1, 2, 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //option D
            SizedBox(
              height: 50,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: checkedAns(3),
                ),
                onPressed: () {
                  if (selAnsIndex == -1) {
                    selAnsIndex = 3;
                    scoreCount(selAnsIndex);
                    setState(() {});
                  }
                },
                child: Text(
                  "D.${allQuestion[index]['option'][3]}",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 1, 2, 2),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
       
        floatingActionButton: Stack(
          children: [
            Positioned(
              bottom: 80,
              right: 10,
              child: FloatingActionButton(
                onPressed: () {
                  
                    if (index < allQuestion.length - 1) {
                      index++;
                    } else {
                      quePage = false;
                    }
                    selAnsIndex = -1;
                    setState(() {});
                  
                },
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.forward,
                  color: Colors.orange,
                ),
              ),
            ),
           Positioned(
              bottom: 20,
              right: 10,
              child:FloatingActionButton(
                onPressed: () {
                  if(index>0){
                    if (index>-1 && index < allQuestion.length - 1) {
                      index--;
                    } else {
                      quePage = false;
                    }
                    
                    setState(() {});
                  }
                  
                },
                backgroundColor: Colors.blue,
                child: const Icon(
                  Icons.backspace,
                  color: Colors.orange,
                ),
              ), ),
            
          ],
        ),
      );
    } else {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz Result",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
                color: Colors.orange),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPPAvcHzmByMoMtQqJAZthUZ-aoeH1uVBMkg&s",
                height: 300,
              ),
              const SizedBox(height: 30),
              const Text(
                "Congratulations",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                    color: Colors.black),
              ),
              const SizedBox(height: 15),
              Text("Score:${scoreCount(-1)}/${allQuestion.length}",
                  style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.black
                      )
                      ),
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                     style: const ButtonStyle(
                     backgroundColor:WidgetStatePropertyAll( Colors.blue),
                   ),
                    onPressed:(){
                      if (index==allQuestion.length-1){
                        quePage=true;
                        index=0;
                        score=0;
                        setState(() {});
                      }
                      
                    } ,
                    child:const Text('Reset',
                      style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                    color: Colors.orange),
                    ) ,
                  ),
                )
              
            ],
          
          ),

        ),
      );
    }
  }
}

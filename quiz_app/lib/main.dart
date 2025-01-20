import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> questionSet = [
    {
      "question": "Who is the founder of Flutter language?",
      "options": ["Dennis Ritchie", "Navneet Dalal ", "James Gosling", "Guido van Rossum"],
      "answer": 1
    },
    {
      "question": "Who is the founder of CPP language?",
      "options": ["Bjarne Stroustrup", "James Gosling", "Dennis Ritchie", "Guido van Rossum"],
      "answer": 0
    },
    {
      "question": "Who is the founder of Java language?",
      "options": ["Dennis Ritchie", "Guido van Rossum", "Bjarne Stroustrup", "James Gosling"],
      "answer": 3
    },
    {
      "question": "Who is the founder of Python language?",
      "options": ["Bjarne Stroustrup", "Dennis Ritchie", "Guido van Rossum", "James Gosling"],
      "answer": 2
    },
    {
      "question": "Who is the founder of C language?",
      "options": ["Dennis Ritchie", "Navneet Dalal", "James Gosling", "Guido van Rossum"],
      "answer": 0
    },
  ];

  int currentIndex = 0;
  
  List<int> selectedAnswers = List.filled(5, -1);

  bool questionPage = true;

  WidgetStateProperty<Color?> currentOption(int answerIndex) {
    if (selectedAnswers[currentIndex] != -1) {
      if (answerIndex == questionSet[currentIndex]["answer"]) {
        return const WidgetStatePropertyAll(Colors.green);
      } else if (selectedAnswers[currentIndex] == answerIndex) {
        return const WidgetStatePropertyAll(Colors.red);
      } else {
        return const WidgetStatePropertyAll(null);
      }
    } else {
      return const WidgetStatePropertyAll(null);
    }
  }

  int count = 0;
  int? countAnswer() {
    if (selectedAnswers[currentIndex] == questionSet[currentIndex]["answer"]) {
      return count++;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return isQuestionScreen();
  }

  Scaffold isQuestionScreen() {
    if (questionPage == true) {
      return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Quiz App",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w700,
              //color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              // const SizedBox(
              //   height: 40,
              // ),
              Row(
                children: [
                  const SizedBox(
                    width: 110,
                  ),
                  Text(
                    "Question: ${currentIndex + 1}/${questionSet.length}",
                    style: const TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                //width: 380,
                height: 60,
                child: Text(
                  questionSet[currentIndex]["question"],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w700),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: currentOption(0)),
                  onPressed: () {
                    if (selectedAnswers[currentIndex] == -1) {
                      setState(() {
                        selectedAnswers[currentIndex] = 0;
                      });
                      countAnswer();
                    }
                  },
                  child: Text(
                    questionSet[currentIndex]["options"][0],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: currentOption(1)),
                  onPressed: () {
                    if (selectedAnswers[currentIndex] == -1) {
                      setState(() {
                        selectedAnswers[currentIndex] = 1;
                      });
                      countAnswer();
                    }
                  },
                  child: Text(
                    questionSet[currentIndex]["options"][1],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: currentOption(2)),
                  onPressed: () {
                    if (selectedAnswers[currentIndex] == -1) {
                      setState(() {
                        selectedAnswers[currentIndex] = 2;
                      });
                      countAnswer();
                    }
                  },
                  child: Text(
                    questionSet[currentIndex]["options"][2],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: 300,
                height: 40,
                child: ElevatedButton(
                  style: ButtonStyle(backgroundColor: currentOption(3)),
                  onPressed: () {
                    if (selectedAnswers[currentIndex] == -1) {
                      setState(() {
                        selectedAnswers[currentIndex] = 3;
                      });
                      countAnswer();
                    }
                  },
                  child: Text(
                    questionSet[currentIndex]["options"][3],
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          children: [
            const SizedBox(
              width: 45,
            ),
            FloatingActionButton(
              onPressed: () {
                if (currentIndex > 0) {
                  setState(() {
                    currentIndex--;
                  });
                }
              },
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.arrow_back_ios_new_sharp,
                color: Colors.orange,
              ),
            ),
            const SizedBox(
              width: 190,
            ),
            FloatingActionButton(
              onPressed: () {
                if (selectedAnswers[currentIndex] != -1) {
                  if (currentIndex < questionSet.length - 1) {
                    setState(() {
                      currentIndex++;
                    });
                  } else {
                    setState(() {
                      questionPage = false; 
                    });
                  }
                }
              },
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.orange,
              ),
            ),
          ],
        ),
      );
   }else{
      return Scaffold(
        appBar:AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 29,
              fontWeight: FontWeight.w700,
              //color: Colors.orange,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // const SizedBox(
              //   height: 50,
              // ),
              Container(
                  width: 150,
                  height: 150,
                  color: Colors.white,
                  child: Image.asset("assets/trophy.jpeg"),
                ),
              const SizedBox(
                height: 30,
              ),
              const SizedBox(
                height: 40,
                child: Text(
                  "Congratulations!!!",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                    const SizedBox(
                      width: 130,
                    ),
                  Text(
                    "Score: $count/${questionSet.length}",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  const SizedBox(
                    width: 40,
                  ),
                  SizedBox(
                    width: 120,
                    height: 40,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
                      ),
                      onPressed: () { 
                        
                        currentIndex=0;
                        questionPage=true;
                        count=0;
                        setState(() { });
                      },
                      child: const Text(
                        "Review",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 70,
                  ),
                  SizedBox(
                width: 100,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  onPressed: () { 
                    selectedAnswers = List.filled(questionSet.length, -1);
                    currentIndex=0;
                    questionPage=true;
                    count=0;
                    setState(() { });
                  },
                  child: const Text(
                    "Reset",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.black
                    ),
                  ),
                ),
              ),
                ],
              ),
              
            ],
          ),
        ),
      );
    }
  }
  
}
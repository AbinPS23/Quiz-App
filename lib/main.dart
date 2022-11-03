import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final List questions = [
    {
      "questions": "choose the word which is the exact OPPOSITE of ENORMOUS",
      "option 1": "Soft",
      "option 2": "Average",
      "option 3": "Tiny",
      "option 4": "Weak",
      "answer": "Tiny",
    },
    {
      "questions":
          "choose the word which is the exact OPPOSITE of COMMISSIONED",
      "option 1": "Started",
      "option 2": "Closed",
      "option 3": "Finished",
      "option 4": "Terminated",
      "answer": "Terminated",
    },
    {
      "questions": "choose the word which is the exact OPPOSITE of ARTIFICIAL",
      "option 1": "Red",
      "option 2": "Natural",
      "option 3": "Truthful",
      "option 4": "Solid",
      "answer": "Natural",
    },
    {
      "questions": "choose the word which is the exact OPPOSITE of EXPAND",
      "option 1": "Convert",
      "option 2": "Condense",
      "option 3": "Congest",
      "option 4": "Conclude",
      "answer": "Condense",
    },
    {
      "questions": "choose the word which is the exact OPPOSITE of MORTAL",
      "option 1": "Divine",
      "option 2": "Immortal",
      "option 3": "Spiritual",
      "option 4": "Eternal",
      "answer": "Immortal",
    },
  ];

  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
        ),
        body: Container(
          color: Colors.grey.shade100,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(child: SizedBox(child: Text("${questions[currentIndex]["questions"]}"))),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () =>
                        validateAnswers(questions[currentIndex]["option 1"]),
                    child: Text(
                      "${questions[currentIndex]["option 1"]}",
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () =>
                      validateAnswers(questions[currentIndex]["option 2"]),
                  child: Text(
                    "${questions[currentIndex]["option 2"]}",
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () =>
                      validateAnswers(questions[currentIndex]["option 3"]),
                  child: Text(
                    "${questions[currentIndex]["option 3"]}",
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () =>
                      validateAnswers(questions[currentIndex]["option 4"]),
                  child: Text(
                    "${questions[currentIndex]["option 4"]}",
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top:12.0),
                child: Text("Total:5 right: ${rightAnswerCount} wrong: ${wrongAnswerCount}"),
              ),
              Padding(
                padding: const EdgeInsets.only(top:8.0),
                child: TextButton(onPressed: reset, child: Text("Reset")),
              )
            ],
          ),
        ),
      ),
    );
  }

  void validateAnswers(userInput) {
    if (currentIndex < questions.length - 1) {
      if (userInput == questions[currentIndex]["answer"]) {
        setState(() {
          rightAnswerCount += 1;
          currentIndex += 1;
        });
      } else {
        setState(() {
          wrongAnswerCount += 1;
          currentIndex += 1;
        });
      }
    }
    
  }

  void reset(){
    setState(() {
     currentIndex = 0;
     rightAnswerCount = 0;
     wrongAnswerCount = 0;
    });
  }
}

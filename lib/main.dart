import 'package:flutter/material.dart';
import 'package:quizapp1/widget/category_container.dart';
import 'Screens/category_screen.dart';
import 'Screens/opening_screen.dart';
import 'Screens/Login_Screen.dart';
import 'Screens/quiz_screen.dart';
import 'Screens/scor_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: '  Quiz App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:QuizScreen()

       
        );
  }
}

class OurFirstScreen extends StatefulWidget {
  const OurFirstScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<OurFirstScreen> createState() => _OurFirstScreenState();
}

class _OurFirstScreenState extends State<OurFirstScreen> {
  int _counter = 0; 

  String _incrementCounter() {
    

    setState(() {
      _counter++;
    });

    return "hellooooooo";
  }

  void _decrementCounter() {
    if (_counter > 0) {
      setState(() {
        _counter--;
      });
    }
  }


  SizedBox mySizedBox = new SizedBox(
    height: 100,
  );

  @override
  Widget build(BuildContext context) {
    const String trackName = "ITI 8-2023"; //

    final int counterTwo;

    counterTwo = 2;

    

    return Scaffold(
        appBar: AppBar(
          title: Text("ITI 8 -2023"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text("Hello world, we are ITI 8/2023",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.orange,
                      fontWeight: FontWeight.bold)),

              

              SizedBox(
                height: 100,
              ),

              const Text(
                'لقد قمت بالضغط على الزر هذا العدد من المرات',
                style: TextStyle(fontSize: 25),
              ),
              Text(
                '$_counter',
                style: const TextStyle(
                    color: Colors.green,
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: _incrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: _decrementCounter,
              tooltip: 'Increment',
              child: const Icon(Icons.minimize),
            ),
          ],
        ));
  }
}


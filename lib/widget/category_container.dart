import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int? index ;
   CategoryContainer({super.key,this.index});

 List quizName = ["Sport Test", "History Test", "General Test"];
  List quizColor = [Colors.blue, Colors.red, Colors.yellow];
  @override
  Widget build(BuildContext context) {
    return  Expanded(
            child: InkWell(
               onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => const QuizScreen(),
            ),
          );
        },
              child: Container(
                decoration: BoxDecoration(
                  color:quizColor[index!] ,
                  border: Border.all(width: 1 , color: Colors.black),
                ),
                child: Center(
                  child: Text(
                   quizName[index!],
                   style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold))),
                
              ),
            ),
          );
  }
}
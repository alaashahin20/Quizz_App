import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp1/Glopal/quiz_data.dart';
import '../Screens/quiz_screen.dart';

class CategoryContainer extends StatelessWidget {
  final int index;
  CategoryContainer({super.key, required this.index});

  List quizName = ["Sport Test", "History Test", "IQ test","Math test","Programing test","English test"];
  List quizColor = [Colors.blue, Colors.red, Colors.green,Colors.blue, Colors.red, Colors.green];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => QuizScreen(
                CategoryMap: DataBase[index],
              ),
            ),
          );
        },
        child: Container(
          //height: MediaQuery.of(context).size.height ,
           child: Center(
              child: Text(quizName[index!],
                  style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold))),
          decoration: BoxDecoration(
            color: quizColor[index!],
            border: Border.all(width: 1, color: Colors.black),
          ),
         
        ),
      ),
    );
  }
}

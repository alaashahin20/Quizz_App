import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp1/Glopal/quiz_data.dart';
import 'package:quizapp1/Screens/opening_screen.dart';

class ScorScreen extends StatelessWidget {
  final int totalScor1 ;final int totalNumofQuistion;
  const ScorScreen({super.key , required this.totalScor1 , required this.totalNumofQuistion});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
                text: TextSpan(
              text: "congratulation  ",
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                  text: "${userNameController.text} \n",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                ),
                TextSpan(text: "your score is  "),
                TextSpan(
                    text: "${totalScor1} / ${totalNumofQuistion}",
                    style: TextStyle(color: Colors.green, fontSize: 25)),
              ],
            )),
            TextButton(
              onPressed: () 
              {
                Navigator.pushAndRemoveUntil<void>(
                    context,
                    MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const OpeningScreen()),
                    (Route<dynamic> route) => false,
                  );
                },
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (BuildContext context){
                      return OpeningScreen();

                    }));
                  },
                  child: Text("Play again")))
          ],
        ),
      ),
    );
  }

  
}

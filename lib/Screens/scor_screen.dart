import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quizapp1/Screens/opening_screen.dart';

class ScorScreen extends StatelessWidget {
  const ScorScreen({super.key});

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
                  text: "Aalaa \n",
                  style: TextStyle(color: Colors.green, fontSize: 25),
                ),
                TextSpan(text: "your score is  "),
                TextSpan(
                    text: "6/10",
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
                child: Text("Play again"))
          ],
        ),
      ),
    );
  }
}

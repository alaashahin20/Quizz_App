import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp1/Screens/scor_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sport Test"),
        centerTitle: true,
        leading: Center(
          child: Text("2/8", style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.only(end: 20),
            child: Icon(Icons.add_reaction_outlined),
          ),
        ],
      ),

       body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text(
                    "Q.3 : How many players in the football team ",
                    style:
                        GoogleFonts.amaranth(color: Colors.black, fontSize: 25),
                  ),
                ),
                for (int i = 0; i < 4; i++)
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const ScorScreen(),
                          ),
                        );
                      },
                      child: Text("${9 + i}")),
      

                SizedBox(
                  height: 200,
                ),

            
              ],
            ),
          ),
        )
    );
  }
}

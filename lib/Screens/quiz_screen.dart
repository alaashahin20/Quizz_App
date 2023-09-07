import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp1/Glopal/quiz_data.dart';
import 'package:quizapp1/Screens/scor_screen.dart';

class QuizScreen extends StatefulWidget {
final Map CategoryMap ;
   QuizScreen({super.key , required this.CategoryMap});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
int index=0;
int totalScor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: widget.CategoryMap["color"],
        title: Text((widget.CategoryMap["categoryName"])),
        centerTitle: true,
        leading: Center(
          child: Text(
           " ${index+1} / ${(widget.CategoryMap["data"] as List).length}"
          , style: TextStyle(fontWeight: FontWeight.bold)),
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
                   (widget.CategoryMap["data"][index]["question"]),
                    style:
                        GoogleFonts.amaranth(color: Colors.black, fontSize: 25),
                  ),
                ),
                for (int i = 0; i < (widget.CategoryMap["data"][index]["answers"] as List).length; i++)
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: widget.CategoryMap["color"],
                    ),
                      onPressed: () {
                            
                        
                          totalScor += (widget.CategoryMap["data"][index]["answers"][i]["score"]) as int ;

                        if(index + 1 < (widget.CategoryMap["data"] as List).length)
                        {
                          setState(() {
                            index++;
                          
                        }); 
                        }else{
                          Navigator.pushReplacement(context, 
                          MaterialPageRoute<void>(
      builder: (BuildContext context) =>  ScorScreen(
        totalScor1: totalScor,
        totalNumofQuistion: index+1,

      ),
                          ),
                          );
                        }

                       
  
                      },
                      child: Text(widget.CategoryMap["data"][index]["answers"][i]["ans"])),
      

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

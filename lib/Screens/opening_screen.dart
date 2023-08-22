import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizapp1/Screens/Login_Screen.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width, 
        height: MediaQuery.of(context).size.height * 1, 

        decoration: const BoxDecoration(
            image: DecorationImage(
                image:AssetImage(
                  "Images/background.png",
                ),
                fit: BoxFit.cover)),
        child: Column(
          children: [
           

            SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
            ),

            Image.asset(
              "Images/quizLogo.png",
              height: MediaQuery.of(context).size.height * 0.2,
            ),

            Text(
              "ITI Quiz App",
              style:
                  GoogleFonts.dancingScript(fontSize: 50, color: Colors.white),
            ),

            SizedBox(
              height: 20,
            ),

            Text(
              "We are creative, enjoy our app",
              style: GoogleFonts.pacifico(fontSize: 30, color: Colors.white),
            ),

            Spacer(),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                width: double.infinity,
                child: ElevatedButton(onPressed: () {

                   Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) =>  LoginScreen(),
            ),
          );
                }, child: Text("Start"))),

          ],
        ),
      ),
    );
  }
}

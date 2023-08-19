import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(37, 248, 100, 0.702),
      body: Container(
        child: Column(
          children: [
            Container(
                height: MediaQuery.of(context).size.height * 1 / 3,
                width: MediaQuery.of(context).size.width,
                child: Image(
                  image: AssetImage("Images/2023-08-19 (1).png"),
                )),
            Container(
              padding: EdgeInsets.all(20),
              width:
                  MediaQuery.of(context).size.width, // the width of the device
              height: MediaQuery.of(context).size.height *
                  2 /
                  3, // hight of the device
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                  color: Colors.white),

              child: Column(
                children: [
                  Text(
                    "login",
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.person),
                      hintText: "User name",
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 36, 4, 240), width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),
                      hintText: "Password",
                      // errorBorder: ,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 36, 4, 240), width: 2),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // border: ,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      // border:
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("New to quiz app?"),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        "Register",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Login"),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25.0), // Adjust the radius as needed
                        ),
                        backgroundColor: Colors.green,
                        elevation: 10,
                        minimumSize: Size(130, 40)),
                  ),
               
               SizedBox(
                height: 15,
               ),
               
                Icon(
              Icons.fingerprint,
              color: Colors.blue,
              size: 50,
            ),
            Text(
              "Touch ID",
              style: TextStyle(color: Colors.grey),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    Text("Remember me"),
                  ],
                ),
               Text(
                    "Forget password",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.bold),
                  ),
                 
            ],),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.green,
      body: Center(
        child: Container(
          child:Column(
            children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

             Image(image:AssetImage(
                    "Images/cortyy.png",
                  )),
                  
                  SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),

             Container(

               width: MediaQuery.of(context).size.width, // the width of the device
               height: MediaQuery.of(context).size.height * 0.6, // hight of the device
              color: Colors.white,
              child: Column(
                children: [
                      Center(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                          child: Text(
                            "login",
                            style:TextStyle(fontSize: 30,fontWeight: FontWeight.bold) ,
                            ),
                        ),
                      ),

                      Container(
                         
                      ),

                      Container(
                        
                        margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                        width: double.infinity,
                        child: 
                            ElevatedButton(onPressed: () {},
                             child: Row(
                               children: [
                                Icon(
                                  Icons.lock,
                                ),
                                 Text("Passowrd"),
                               ],
                             ), ),  
                      ),
                       
                    Row(
                      children: [
                        SizedBox(
                          width: 300,
                             ),
                        Text("New to quiz app?"),

                        SizedBox(
                          width: 20,
                             ),
                        Text(
                          "Register",
                          style:TextStyle(
                            color: Colors.green,
                          ) ,),
                      ],
                    ),

                   Container(
                          color: Colors.green ,
                          margin: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
                          child: Text ("Login"),
                   ),

                     Icon(Icons.fingerprint),

                     Text(
                      "Use Touch ID",
                      style: TextStyle(color: Colors.grey),),

                      Row(
                      children: [
                        SizedBox(
                          width: 50,
                             ),
                        Icon(Icons.check_box),

                        SizedBox(
                          width: 5,
                             ),
                        Text(
                          "Remember me",
                          
                          ) ,

                          SizedBox(
                          width: 150,
                             ),

                          Text(
                          "Forget Password?",
                          style:TextStyle(
                            color: Colors.green,
                          ) ,),
                      ],
                    ),

                      
                  ],
                )),
              ]),
             ),     
          ),
        );
    
  }
}
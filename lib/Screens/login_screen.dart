import 'package:flutter/material.dart';
import 'package:quizapp1/Screens/category_screen.dart';

import '../Glopal/quiz_data.dart';

class LoginScreen extends StatefulWidget {

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  RegExp pass_valid =
      RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');

  RegExp Email_valid =
      RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$');

  bool ValidatePassword(String pass) {
    String _Password = pass.trim();
    if (pass_valid.hasMatch(_Password)) {
      return true;
    } else {
      return false;
    }
  }

  bool ValidateEmail(String mail) {
    String _Email = mail.trim();
    if (Email_valid.hasMatch(_Email)) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onBackButtonPressed(context) ,
      child: Scaffold(
        backgroundColor: Color.fromRGBO(37, 248, 100, 0.702),
        body: Container(
          child: SingleChildScrollView(
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
                  width: MediaQuery.of(context)
                      .size
                      .width, // the width of the device
                  height: MediaQuery.of(context).size.height *
                      2 /
                      3, // hight of the device
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(40)),
                      color: Colors.white),
    
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Text(
                            "login",
                            style: TextStyle(
                                fontSize: 40, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: userNameController,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "User name required";
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.person),
                              hintText: "User name",
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 4, 240),
                                    width: 2),
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
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Email required";
                              } else {
                                bool result = ValidateEmail(value);
                                if (result) {
                                  return null;
                                } else {
                                  return "Email Must contain @ , ( . ) , ( com ) ";
                                }
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.email_outlined),
                              hintText: "Email",
                              // errorBorder: ,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 4, 240),
                                    width: 2),
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
                            height: 12,
                          ),
                          TextFormField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Password required";
                              } else {
                                bool result = ValidatePassword(value);
                                if (result) {
                                  return null;
                                } else {
                                  return "password shoud contain Uppercase ,LowerCase \n special character ,number and more than 9 field  ";
                                }
                              }
                            },
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: Icon(Icons.visibility),
                              hintText: "Password",
                              // errorBorder: ,
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color.fromARGB(255, 36, 4, 240),
                                    width: 2),
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
                            onPressed: () {
                              if (_formKey.currentState!.validate())
                                Navigator.push(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (BuildContext context) =>
                                        const CategoryScreen(),
                                  ),
                                );
                            },
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
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  
 Future<bool> _onBackButtonPressed(BuildContext context) async{
    bool exitApp = await showDialog(
      context: context,
     builder: (BuildContext context) {
       return AlertDialog(
            
            title: const Text("realy !?"),
            content: const Text("Are you sur"),
            actions: <Widget>[
              TextButton(onPressed: (){
                Navigator.of(context).pop(false);
              }, child: Text("No")),
              
               TextButton(onPressed: (){
                Navigator.of(context).pop(true);
              }, child: Text("Yes")),

            ],
       );
     }
    );
    return exitApp ?? false ;
 }
}

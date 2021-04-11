import 'package:flutter/material.dart';
import 'package:flutter_lasttiktokapp/home.dart';
import 'package:flutter_lasttiktokapp/signup.dart';

import 'variables.dart';

//import 'package:google_fonts/google_fonts.dart';
class NavigationPage extends StatefulWidget {
  @override
  _NavigationPageState createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  bool isSigned = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: isSigned == false ? Login() : HomePage());
  }
}

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[200],
      body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome to TikTok",
                  style: mystyle(25, Colors.black, FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              Text(
                "Login",
                style: mystyle(25, Colors.black, FontWeight.w600),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email),
                      labelStyle: mystyle(20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(left: 20, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: 'password',
                      prefixIcon: Icon(Icons.lock),
                      labelStyle: mystyle(20),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20))),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(20)),
                child: Center(
                  child: Text(
                    "Login",
                    style: mystyle(20, Colors.white, FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: mystyle(20),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp())),
                    child: Text(
                      "Register",
                      style: mystyle(20, Colors.purple),
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}

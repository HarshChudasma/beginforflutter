

import 'package:flutter/material.dart';
import 'package:flutter_demo1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/image/login_image.png",
            fit: BoxFit.cover,
            height: 300,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text("Welcome $name", 
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0,horizontal: 32.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter username",
                        labelText: "Username",
                      ),
                      onChanged: (value){
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: "Enter password",
                        labelText: "Password",
                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    InkWell(
                      onTap: () async {
                        setState(() {
                          changedButton = true;
                        });
                        await Future.delayed(Duration(seconds: 1));
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: changedButton? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        child: changedButton?Icon(Icons.done,color: Colors.white,) : Text(
                            "Login",
                            style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(50)
                        ),
                      ),
                    ),

                    // ElevatedButton(
                    //   child: Text("Login"),
                    //   style: TextButton.styleFrom(minimumSize: Size(150, 40)),
                    //   onPressed: () {
                    //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                    //   },
                    // ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
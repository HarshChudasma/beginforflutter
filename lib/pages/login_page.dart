

import 'package:flutter/material.dart';
import 'package:flutter_demo1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changedButton = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async{
    if(_formKey.currentState.validate()){
      setState(() {
        changedButton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      setState(() {
      changedButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/image/undraw_hey_email_liaa.png",
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
                        validator: (value){
                          if(value.isEmpty){
                            return "Username cannot be empty";
                          }
                          return null;
                        },
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
                        validator: (value){
                          if(value.isEmpty){
                            return "Passeord cannot be empty";
                          }else if(value.length < 8){
                            return "Password length should be atleast 8";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 50.0,
                      ),
                      Material(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(50),  
                        child: InkWell(
                          onTap: () => moveToHome(context),
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
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
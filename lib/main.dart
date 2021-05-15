import 'package:flutter/material.dart';
import 'package:flutter_demo1/pages/login_page.dart';
import 'package:flutter_demo1/pages/home_page.dart';
import 'package:flutter_demo1/utils/routes.dart';
import 'package:flutter_demo1/widgets/themes.dart';
import 'package:flutter_demo1/widgets/themes.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkTheme(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) =>  HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }

}


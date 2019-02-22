import 'package:flutter_first_app/main.dart';
import 'package:flutter_first_app/model/simpleNavName.dart';
import 'package:flutter_first_app/views/ForgetPassword.dart';
import 'package:flutter_first_app/views/home.dart';
import 'package:flutter_first_app/views/register.dart';

var routes = {
  "/login": (context) => LoginPage(),
  "/": (context) => Home(),
  "/register": (context) => Register(),
  "/forgetPsw": (context) => ForgetPassword(),
  //"/home":(context)=>Home(),
  "/drawer": (context) => MyDrawer(),

  "/second": (context) => SecondScreen(),
};

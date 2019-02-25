import 'package:flutter_first_app/main.dart';
import 'package:flutter_first_app/model/simpleNavName.dart';
import 'package:flutter_first_app/views/login_forget_password.dart';
import 'package:flutter_first_app/views/home.dart';
import 'package:flutter_first_app/views/login_register.dart';

var routes = {
  "/login": (context) => LoginPage(),
  "/": (context) => Home(),
  "/register": (context) => Register(),
  "/forgetPsw": (context) => ForgetPassword(),
  //"/home":(context)=>Home(),
  "/drawer": (context) => MyDrawer(),

  "/second": (context) => SecondScreen(),
};

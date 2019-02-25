import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPassword createState() => _ForgetPassword();
}

class _ForgetPassword extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("找回密码"),
        ),
        body: Center(
          child: ListView(
            children: <Widget>[
              Text("这个页面是用来找回密码的"),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "邮箱",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "手机号",
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "验证码",
                  suffixIcon: FlatButton(
                    color: Colors.grey,
                    onPressed: () {
                      print("发送验证码");
                    },
                    child: Text("发送"),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

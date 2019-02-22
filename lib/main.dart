import 'package:flutter/material.dart';
import 'package:flutter_first_app/router/routers.dart';
import 'package:oktoast/oktoast.dart';
import 'package:groovin_material_icons/groovin_material_icons.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      position: ToastPosition.center,
      textStyle: TextStyle(fontSize: 30.0, color: Colors.yellow),
      backgroundColor: Colors.grey,
      radius: 10.0,
      child: MaterialApp(
        initialRoute: '/login',
        routes: routes,

        theme: ThemeData(
          // primarySwatch: Colors.blue,
          primaryColor: Colors.blue,
        ),
        //home: LoginPage(),
      ),
    );
  }
}

//===========================login========================
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _email, _password;
  bool _isObscure = true;
  Color _eyeColor;
  List _loginMethod = [
    {
      //"title": "facebook",
      "title": "手机号",
      "icon": GroovinMaterialIcons.cellphone_android,
      //"icon": GroovinMaterialIcons.facebook,
      //"icon": Icon(Icons.phone_android),
    },
    {
      "title": "微信",
      "icon": GroovinMaterialIcons.wechat,
    },
    {
      "title": "QQ",
      "icon": GroovinMaterialIcons.qqchat,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 22.0),
              children: <Widget>[
                SizedBox(
                  height: kToolbarHeight,
                ),
                buildTitle(),
                //buildTitleLine(),
                SizedBox(height: 70.0),
                buildEmailTextField(),
                SizedBox(height: 30.0),
                buildPasswordTextField(context),
                buildForgetPasswordText(context),
                SizedBox(height: 60.0),
                buildLoginButton(context),
                SizedBox(height: 30.0),
                buildOtherLoginText(), //其他账号登录 行
                buildOtherMethod(context), //其他登录方式图标 行
                buildRegisterText(context), //没有账号？点击注册 行
              ],
            )));
  }

  Align buildRegisterText(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.only(top: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('没有账号？'),
            GestureDetector(
              child: Text(
                '点击注册',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pushNamed(context, "/register");
              },
            ),
          ],
        ),
      ),
    );
  }

  ButtonBar buildOtherMethod(BuildContext context) {
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: _loginMethod
          .map((item) => Builder(
                builder: (context) {
                  return IconButton(
                      icon: Icon(item['icon'],
                          color: Theme.of(context)
                              .iconTheme
                              .color
                              .withRed(10)
                              .withBlue(160)
                              .withGreen(20)
                              .withAlpha(220)),
                      onPressed: () {
                        //TODO : 第三方登录方法
                        Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text("${item['title']}登录"),
                          action: SnackBarAction(
                            label: "取消",
                            onPressed: () {},
                          ),
                        ));
                      });
                },
              ))
          .toList(),
    );
  }

  Align buildOtherLoginText() {
    return Align(
        alignment: Alignment.center,
        child: Text(
          '其他账号登录',
          style: TextStyle(color: Colors.grey, fontSize: 14.0),
        ));
  }

  Align buildLoginButton(BuildContext context) {
    return Align(
      child: SizedBox(
        height: 45.0,
        width: 270.0,
        child: RaisedButton(
          child: Text(
            '登录',
            style: Theme.of(context).primaryTextTheme.headline,
          ),
          color: Colors.blue,
          onPressed: () {
//            Navigator.push(context, MaterialPageRoute(
//              builder: (context) => Home(),),);
            Navigator.pop(context);
//            if (_formKey.currentState.validate()) {
//              ///只有输入的内容符合要求通过才会到达此处
//              _formKey.currentState.save();
//              //TODO 执行登录方法
//              print('email:$_email , assword:$_password');
//            }
          },
          shape: StadiumBorder(side: BorderSide(color: Colors.lightBlue)),
        ),
      ),
    );
  }

  Padding buildForgetPasswordText(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Align(
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            '忘记密码？',
            style: TextStyle(fontSize: 14.0, color: Colors.grey),
          ),
          onPressed: () {
//            Navigator.push(context, MaterialPageRoute(
//              builder: (context) => ForgetPassword(),
//            ),);
            Navigator.pushNamed(context, "/forgetPsw");
          },
        ),
      ),
    );
  }

  TextFormField buildPasswordTextField(BuildContext context) {
    return TextFormField(
      onSaved: (String value) => _password = value,
      obscureText: _isObscure,
      validator: (String value) {
        if (value.isEmpty) {
          return '请输入密码';
        }
      },
      decoration: InputDecoration(
          labelText: '密码',
          suffixIcon: IconButton(
              icon: Icon(
                Icons.remove_red_eye,
                color: _eyeColor,
              ),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                  _eyeColor = _isObscure ? Colors.grey : Colors.blue;
                });
              })),
    );
  }

  TextFormField buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: '邮箱',
      ),
      validator: (String value) {
        var emailReg = RegExp(
            r"[\w!#$%&'*+/=?^_`{|}~-]+(?:\.[\w!#$%&'*+/=?^_`{|}~-]+)*@(?:[\w](?:[\w-]*[\w])?\.)+[\w](?:[\w-]*[\w])?");
        if (!emailReg.hasMatch(value)) {
          return '请输入正确的邮箱地址';
        }
      },
      onSaved: (String value) => _email = value,
    );
  }

  Padding buildTitleLine() {
    return Padding(
      padding: EdgeInsets.only(left: 12.0, top: 4.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Container(
          color: Colors.blueAccent,
          width: 40.0,
          height: 2.0,
        ),
      ),
    );
  }

  Padding buildTitle() {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'OutZone',
        style: TextStyle(fontSize: 42.0),
      ),
    );
  }
}

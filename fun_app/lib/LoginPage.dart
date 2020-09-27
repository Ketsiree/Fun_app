import 'package:flutter/material.dart';
import 'Action/ActionLogin.dart';
import 'user.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final User user = new User();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  @override
  Widget build(BuildContext context) {
    final TextField _txtEmail = new TextField(
      controller: emailController,
      decoration: new InputDecoration(
        hintText: 'Email',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      onChanged: (text) {
        setState(() {
          this.user.emailString = text;
        });
      },
    );

    final TextField _txtPassword = new TextField(
      controller: passwordController,
      decoration: new InputDecoration(
        hintText: 'Password',
        contentPadding: new EdgeInsets.all(10.0),
        border: InputBorder.none,
      ),
      keyboardType: TextInputType.text,
      autocorrect: false,
      obscureText: true,
      onChanged: (text) {
        setState(() {
          this.user.passwordString = text;
        });
      },
    );

    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bedridden"),
      ),
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Container(
            width: 150.0,
            height: 150.0,
            child: new Image.asset(
              'assets/images/physical1.jpg',
              width: 80,
            ),
          ),
          new Container(
            margin: new EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 10.0, top: 20.0),
            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(25.0))),
            child: _txtEmail,
          ),
          new Container(
            margin: new EdgeInsets.only(
                left: 20.0, right: 20.0, bottom: 10.0, top: 20.0),
            decoration: new BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                border: new Border.all(width: 1.2, color: Colors.black12),
                borderRadius:
                    const BorderRadius.all(const Radius.circular(25.0))),
            child: _txtPassword,
          ),
          new Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new RaisedButton(
                    child: new Text("Login"),
                    textColor: Colors.white,
                    color: Colors.blue,
                    onPressed: () {
                      // ActionLogin.f_print();
                      ActionLogin.signIn(
                        context: context,
                        email: emailController.text.trim(),
                        pass: passwordController.text.trim(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

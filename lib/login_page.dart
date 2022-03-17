import 'dart:html';

import 'package:flutter/material.dart';
import 'home.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  String username = "";
  String password = "";
  bool isLoginSuccess = false;

  @override
  Widget build(BuildContext context){
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Hotel Services"),
        ),
        body: SingleChildScrollView(
          child: Coloumn(children: [
            LogoImageAssets(),
            _usernameField(),
            _passwordField(),
            _loginButton(context),
            TextButton(onPressed: () {},
              child: const Text("Forget Password?"))
          ]),
        ),
      ),
    );
  }

  Widget _usernameField(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: TextFormField(
        enabled: true,
        onChanged: (value){username = value;},
        decoration:  InputDecoration(
          prefixIcon: Icon(Icons.person),
          hintText: 'Username',
          contentPadding: const EdgeInsets.all(8.0),
          border: OutlineInputBorder(
            borderRadius: 
            BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (isLoginSuccess)
                ?Colors.blue : Colors.blue),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius:
            BorderRadius.all(Radius.circular(8.0)),
            borderSide: BorderSide(color: (isLoginSuccess)
                ?Colors.blue : Colors.blue),
          ), 
        ),
        ),
    ),
  );
}

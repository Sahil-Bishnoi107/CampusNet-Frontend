import 'package:campusnet/Authentication/UI/widgets/HeaderText.dart';
import 'package:campusnet/Authentication/UI/widgets/LoginButton.dart';
import 'package:campusnet/Authentication/UI/widgets/SocailLoginWidget.dart';
import 'package:campusnet/Authentication/UI/widgets/TextFieldWidget.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Row(
        children: [
          Expanded(child: _loginOptions(context))
        ],
      ),
    );
  }
}

Widget _loginOptions(BuildContext context ){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.height;
  return Container(
    height: height,width: width,
    child: Column(
      children: [
        SizedBox(height: height*0.2,),
        HeaderText( height, width),
        TextfieldWidget(name: "Email", bodyText: "xyz@gmail.com", boxHeight: 1, boxWidth: 1),
        SizedBox(height: height*0.02,),
        TextfieldWidget(name: "Password", bodyText: "********", boxHeight: 1, boxWidth: 1),
        _forgotPassword(height, width),
        Loginbutton(type: "Login"),
        _divider(height, width),
        SizedBox(height: height*0.04,),
        Socailloginwidget(type: "Google", icon: FontAwesome.google_brand),
        Socailloginwidget(type: "Github", icon: FontAwesome.github_brand),
        SizedBox(height: height*0.04,),
        _signUpOption(height, width)
      ],
    ),
  );
}


Widget _forgotPassword(double height, double width){
  return Container(
    width: width*0.3,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
      Text("Forgot Password?", style: TextStyle(color: Colors.blue),)
      ],
    ),
  );
}

Widget _divider(double height, double width){
  return Container(
    width: width*0.3,
    height: height*0.04,
    child: Row(
      children: [
        Container(width: width*0.1,height: 1,decoration: BoxDecoration(color: Colors.grey),),
        Text("Or"),
        Container(width: width*0.1,height: 1,decoration: BoxDecoration(color: Colors.grey),)
      ],
    ),
  );
}


Widget _signUpOption(double height, double width){
  return Container(
    width: width*0.3,
    height: height*0.1,
    child: Row(
      children: [
        Text("Dont have any account?"),
        Text("Sign Up",style: TextStyle(color: Colors.blue[400]),)
      ],
    ),
  );
}

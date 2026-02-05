import 'package:campusnet/Authentication/Data/AuthRepo.dart';
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
  void initState(){
    super.initState();
     Authrepo().initAuthListener(context);
  }
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           _loginSection(context),
          _image(context)
        ],
      ),
    );
  }
}

Widget _loginSection(BuildContext context){
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
    height: height*0.96,
    padding: EdgeInsets.only(left: width*0.1,right: width*0.1),
    child: _loginOptions(context),
  );
}

Widget _loginOptions(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
    height: height*0.9,width: width*0.24,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [  
         HeaderText(),
         SizedBox(height: height*0.04),
         TextfieldWidget(name: "Email", bodyText: "Example@gmail.com"),
         SizedBox(height: height*0.01),
         TextfieldWidget(name: "Password", bodyText: "At least 8 characters"),
        _forgotPassword(),
         SizedBox(height: height * 0.01),
         Loginbutton(type: "Sign In"),
         SizedBox(height: 20),
        _divider(),
         SizedBox(height: 20),
         InkWell(
          onTap: () {
            Authrepo().signInWithGoogle();
          },
          child: Socailloginwidget(type: "Sign in with Google", icon: FontAwesome.google_brand)),
         SizedBox(height: 10),
         InkWell(
          onTap: () {
            Authrepo().signInWithGoogle();
          },
          child: Socailloginwidget(type: "Sign in with Github", icon: FontAwesome.github_brand)), 
         SizedBox(height: 30),
        _signUpOption()
      ],
    ),
  );
}

Widget _forgotPassword() {
  return Align(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () {},
      child: const Text(
        "Forgot Password?",
        style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold,fontSize: 12,fontFamily: 'Nunito'),
      ),
    ),
  );
}

Widget _divider() {
  return Row(
    children: [
      Expanded(child: Container(height: 1, color: Colors.grey[300])),
      const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Text("Or", style: TextStyle(color: Colors.grey)),
      ),
      Expanded(child: Container(height: 1, color: Colors.grey[300])),
    ],
  );
}

Widget _signUpOption() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      const Text("Don't you have an account? "),
      GestureDetector(
        onTap: () {},
        child: const Text(
          "Sign up",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold, fontFamily: 'Nunito'),
        ),
      )
    ],
  );
}

Widget _image(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
  return Container(
   
    height: height,width: width*0.55,
   // margin: const EdgeInsets.all(20),
    decoration: BoxDecoration(
      //borderRadius: BorderRadius.circular(20),
      image: const DecorationImage(
        image: AssetImage("assets/images/LoginPageImage3.jpg"),
        fit: BoxFit.cover,
      ),
    ),
  );
}

import 'package:flutter/material.dart';

Widget HeaderText(String topText,String bottomText,double height,double width){
  return Container(
    height: height*0.2,width: width*0.3,
    child: Column(
      children: [
        Text("Welcome Back",style: TextStyle(fontSize: 18),),
        SizedBox(height: height*0.05,),
        Text("Today is a new day. It's your day. You shape it.",style: _textStyle(),),
        Text("Sign In to Continue",style: _textStyle(),)
      ],
    ),
  );
}

TextStyle _textStyle(){
  return TextStyle(
    fontSize: 12
  );
}
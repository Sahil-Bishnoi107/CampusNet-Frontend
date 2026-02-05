import 'package:flutter/material.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Welcome Back ",
          style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold,fontFamily: 'Nunito'),
        ),
        const SizedBox(height: 5),
         Text(
          "Today is a new day. It's your day. You shape it.",
          style: _textStyle(),
        ),
         Text(
          "Sign In to start managing your projects.",
          style: _textStyle(),
        )
      ],
    );
  }
}

TextStyle _textStyle(){
  return TextStyle(fontSize: 11, color: Colors.grey);
}
import 'package:flutter/material.dart';

class Loginbutton extends StatelessWidget {
  final String type;
  const Loginbutton({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.3,
      height: height*0.055,
      decoration: BoxDecoration(
        color: const Color(0xFF162D3A), 
        borderRadius: BorderRadius.circular(5),
      ),
      child: Center(
        child: Text(
          type,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 12,
            fontFamily: 'Nunito'
          ),
        ),
      ),
    );
  }
}
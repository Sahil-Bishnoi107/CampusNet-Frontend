import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String name;
  final String bodyText;
  final double boxWidth;
  final double boxHeight;
  const TextfieldWidget({super.key, required this.name,required this.bodyText,required this.boxHeight,required this.boxWidth});
  


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.only(left: boxWidth * width*0.1, top:boxHeight * height*0.1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          Container(
            width: boxWidth*width,
            height: boxWidth*height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(boxWidth*0.02)),
              color: const Color.fromARGB(255, 227, 226, 226),
              border: Border.all(color: Colors.black)
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: bodyText,
                hintStyle: TextStyle(color: const Color.fromARGB(255, 123, 123, 123))
              ),
              maxLength: null,
            ),
          )
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

class TextfieldWidget extends StatelessWidget {
  final String name;
  final String bodyText;
  
  const TextfieldWidget({
    super.key, 
    required this.name,
    required this.bodyText,
  });

  @override
  Widget build(BuildContext context) {
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;
    return Container(
      height: height*0.09,width: width*0.3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name, style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 12)),
          SizedBox(height: 4,),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: const Color(0xFFF3F7FB), 
              
            ),
            child: Container(
              height: height*0.055,width: width*0.3,
              child: TextField(
                style: TextStyle(fontSize: 12),
                decoration: InputDecoration(
                  isDense: true,
                  
                  hintText: bodyText,
                  hintStyle: const TextStyle(color: Color.fromARGB(255, 170, 170, 170), fontSize: 12,fontFamily: 'Nunito'),
                  border: InputBorder.none,
                 contentPadding: const EdgeInsets.only(left: 12, top: 12),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
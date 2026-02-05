import 'package:flutter/material.dart';

class Socailloginwidget extends StatelessWidget {
  final String type;
  final IconData icon;
  const Socailloginwidget({
    super.key,
    required this.type,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      width: width*0.3,
      height: height*0.055,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade300)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 20),
          const SizedBox(width: 10),
          Text(
            type,
            style: const TextStyle(fontWeight: FontWeight.w500,fontFamily: 'Nunito'),
          )
        ],
      ),
    );
  }
}
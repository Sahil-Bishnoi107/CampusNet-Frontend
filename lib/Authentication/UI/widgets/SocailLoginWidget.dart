import 'package:flutter/material.dart';

class Socailloginwidget extends StatefulWidget {
 final String type;
 final IconData icon;
  const Socailloginwidget({super.key,required this.type,required this.icon});

  @override
  State<Socailloginwidget> createState() => _SocailloginwidgetState();
}

class _SocailloginwidgetState extends State<Socailloginwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blue[100]),
      child: Row(
        children: [
          SizedBox(width: 10,),
          Icon(widget.icon),
          SizedBox(width: 10,),
          Text(widget.type)
        ],
      ),
    );
  }
}
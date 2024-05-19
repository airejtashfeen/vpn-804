import 'package:flutter/material.dart';
import 'package:vpn_basic_project/main.dart';

class HomeCard extends StatelessWidget {


  final String title,subtitle;
  final Widget Icon;

  const HomeCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.Icon
    });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: mq.width * .45,
      child: Column(
        children: [
          Icon,
          SizedBox(height: 6,),
          Text(title, 
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ), 
          Text(subtitle, 
          style: TextStyle(
            color: Colors.black54,
            fontSize: 12, fontWeight: FontWeight.w500)),
        ],
      ));
  }
}
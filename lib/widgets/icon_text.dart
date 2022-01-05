import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconText extends StatelessWidget {
  IconText({this.icon, this.text});
  final IconData? icon;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: Colors.yellow,),
        SizedBox(width: 10,),
        Text(text.toString(), style: TextStyle(
          color: Colors.grey,
          fontSize: 12
          ),
        )
      ],
    );
  }
}
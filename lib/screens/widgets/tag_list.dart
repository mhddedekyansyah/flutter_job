import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TagList extends StatefulWidget {

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final List<String> tagList = ['All', '⚡ Popular', '⭐ Featured'];
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: selected == index ? Colors.blue.withOpacity(0.2) : Colors.white,
              border: Border.all(
                color: selected == index ? Colors.blue : Colors.blue.withOpacity(0.2)
              )
            ),
            child: Text(tagList[index]),
            ),
        ), 
        separatorBuilder: (_,index) => SizedBox(width: 20,), 
        itemCount: tagList.length
        ),
    );
  }
}
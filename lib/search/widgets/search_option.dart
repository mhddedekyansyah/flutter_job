import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchOption extends StatefulWidget {

  @override
  _SearchOptionState createState() => _SearchOptionState();
}

class _SearchOptionState extends State<SearchOption> {
  final Map<String, bool> optionMap = {
    'Mobile Development' : true,
    'Web Development' : false,
    'Web Design' : false,
    'Design Ui & UX' : false,
    'Automation Testing' : false,
  };
  @override
  Widget build(BuildContext context) {
    var keys = optionMap.keys.toList();
    return Container(
      height: 35,
      child: ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              var res = optionMap[keys[index]] ?? false;
              optionMap[keys[index]] = !res;
            });
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
            decoration: BoxDecoration(
              color: optionMap[keys[index]] != null && optionMap[keys[index]] == true
                    ? Colors.amberAccent
                    : Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.amberAccent)
            ),
            child: Row(
              children: [
                Text(keys[index], style: TextStyle(
                  fontSize: 12,
                  color: optionMap[keys[index]] != null && optionMap[keys[index]] == true
                    ? Colors.white
                    : Colors.black,
                ),),
                if(optionMap[keys[index]] != null && optionMap[keys[index]] == true)
                Row(
                  children: [
                    Icon(Icons.close, color: Colors.white, size: 15,)
                  ],
                )
              ],
            ),
          ),
        ), 
        separatorBuilder: (_,index) => SizedBox(width: 15,), 
        itemCount: optionMap.length),
    );
  }
}
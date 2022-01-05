
import 'package:flutter/material.dart';

class SearchInput extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.of(context).pop();
            },
            child: Container(
              padding: EdgeInsets.all(8),
              width: 40,
              height: 40,
              decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8)
              ),
              child: Icon(Icons.arrow_back_ios_new, color: Colors.white,)
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: TextField(
              cursorColor: Colors.amberAccent,
              autofocus: true,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.amberAccent,),
                labelText: 'Search',
                labelStyle: TextStyle(
                  color: Colors.amberAccent
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.amberAccent))
              ),
            ),
          ),
          SizedBox(width: 5),
          Container(
            padding: EdgeInsets.all(8),
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(8)
            ),
            child: Icon(Icons.filter_list_outlined, color: Colors.white,)
          )
        ],
      ),
    );
  }
}
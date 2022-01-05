import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/search/search.dart';

class SearchCard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(20),
      height: 300,
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: NetworkImage('assets/images/search_bg.png'),
          fit: BoxFit.cover
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Fast search', style: TextStyle(
            color: Colors.white,
            fontSize: 26
            ),
          ),
          SizedBox(height: 10,),
          Text('You can search quickly for\nthe job you want', style: TextStyle(
            height: 1.8,
            color: Colors.white,
            fontWeight: FontWeight.w400
            ),
          ),
           SizedBox(height: 30,),
           GestureDetector(
             onTap: () {
               Navigator.of(context).push(MaterialPageRoute(builder:  (context) => SearchPage()));
             },
             child: Container(
               padding: EdgeInsets.all(20),
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(8),
                 color: Colors.white
               ),
               child: Row(
                 children: [
                   Image.asset('assets/icons/search.png',width:20, color: Colors.grey,),
                   SizedBox(width: 10,),
                   Text('Search', style: TextStyle(color: Colors.grey),)
                 ],
               ),
             ),
           )
        ],
      )
    );
  }
}
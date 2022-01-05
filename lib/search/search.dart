import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/search/widgets/search_input.dart';
import 'package:job_finder_app/search/widgets/search_list.dart';
import 'package:job_finder_app/search/widgets/search_option.dart';

class SearchPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children : [
          Row(
            children: [
              Expanded(
                flex: 2,
                child:   Container()
              ),
          Expanded(
            flex: 1,
            child:   Container(
              color: Colors.grey.withOpacity(0.1),
            )
          )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchInput(),
              SizedBox(height: 10,),
              SearchOption(),
              SizedBox(height: 10,),
              Expanded(child: SearchList())
            ],
          )
        ]
      )
    );
  }
}
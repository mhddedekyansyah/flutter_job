import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/widgets/home_app_bar.dart';
import 'package:job_finder_app/screens/widgets/job_list.dart';
import 'package:job_finder_app/screens/widgets/search_card.dart';
import 'package:job_finder_app/screens/widgets/tag_list.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child:  Container()
                ),
              Expanded(
                flex: 1,
                child:  Container(
                  color: Colors.grey.withOpacity(0.1),
                )
                )
            ]
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeAppBar(),
              SearchCard(),
              TagList(),
              JobList()
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
        },
        backgroundColor: Colors.amber,
        elevation: 0,
        child: Icon(Icons.add, color: Colors.white,),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                    GestureDetector(
                      onTap: () => setState(() => selected = 0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(selected == 0 ? Icons.home :Icons.home_outlined, size: 30, color: selected == 0 ? Colors.amber : Colors.grey.shade500,)
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () => setState(() => selected = 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(selected == 1 ? Icons.cases :Icons.cases_outlined, size: 30, color: selected == 1 ? Colors.amber : Colors.grey.shade500,)
                        ],
                      ),
                    ),
                    GestureDetector(
                       onTap: () => setState(() => selected = 2),
                      child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(selected == 2 ? Icons.chat : Icons.chat_outlined, size: 30, color: selected == 2 ? Colors.amber : Colors.grey.shade500,)
                        ],
                      ),
                    ),
                  GestureDetector(
                     onTap: () => setState(() => selected = 3),
                    child: Column(
                         mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(selected == 3 ? Icons.person : Icons.person_outline, size: 30, color: selected == 3 ? Colors.amber : Colors.grey.shade500),
                        ],
                      ),
                  ),
            ],
          ),
        ),
      )
    );
  }
}
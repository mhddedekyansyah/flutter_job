import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
        left: 25,
        right: 25 
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome home',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal
                ),
              ),
              Text('Dedek Yansyah',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 28
              ),
              ),
          ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30,right: 10),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined, 
                      size: 40,
                      color: Colors.grey,
                      ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red
                        ),
                      )
                    )
                  ],
                ),
              ),
              SizedBox(width:10),
             Container(
                 width: 50,
                 height: 50,
                 padding: EdgeInsets.all(5),
                 decoration: BoxDecoration(
                   color: Colors.grey.withOpacity(0.5),
                   borderRadius: BorderRadius.circular(8)
                 ),
                 child: Image.asset('assets/images/avatar.png'),
               ),
             
            ],
          )
        ],
      ),
    );
  }
}
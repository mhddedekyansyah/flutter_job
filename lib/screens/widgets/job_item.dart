import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  bool showTime;
  JobItem(this.job,{this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2),blurRadius: 7, spreadRadius: 5, offset: Offset(0,3))
        ],
        borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: NetworkImage(job.logoUrl.toString())
                      )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text(job.company.toString(), style: TextStyle(
                    fontSize:16,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey
                  ),)
                ],
              ),
              Icon(job.isMark! ? Icons.bookmark : Icons.bookmark_outline_outlined,
                color: job.isMark! ? Colors.black : Colors.black,
              )
            ],
          ),
          SizedBox(height: 10,),
          Text(job.title.toString(), style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconText(icon: Icons.location_on_outlined, text: job.location,),
              if(showTime) IconText(icon: Icons.access_time_outlined, text: job.time)
            ],
          )
        ],
      ),
    );
  }
}
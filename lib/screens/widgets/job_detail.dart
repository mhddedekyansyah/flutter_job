import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
 final Job job;
 JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      height: 630,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 70,
                height: 5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withOpacity(0.4)
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.withOpacity(0.3)
                      ),
                      child: Image.asset(job.logoUrl.toString()),
                    ),
                    SizedBox(width: 10,),
                    Text(job.company.toString(), style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      job.isMark! ? Icons.bookmark : Icons.bookmark_outline_outlined,
                      color: job.isMark! ? Colors.black : Colors.black,
                      ),
                Icon(Icons.more_horiz_outlined)
                  ],
                ),
              ],
            ),
            SizedBox(height: 25,),
            Text(job.title.toString(), style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconText(icon: Icons.location_on_outlined, text: job.location,),
                IconText(icon: Icons.access_time_outlined, text: job.time,)
              ],
            ),
            SizedBox(height: 30,),
            Text('Requirement', style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 10,),
            ...job.req!.map((e) => Container(
              margin: EdgeInsets.symmetric(vertical: 5),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.circle
                    ),
                  ),
                  SizedBox(width: 10,),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: 300,
                    ),
                    child: Text(e, style: TextStyle(
                      fontWeight: FontWeight.w500,
                      wordSpacing: 2.5,
                      height: 1.5
                    ),),
                  ),
                ],
              ),
            )).toList(),
            Container(
              margin: EdgeInsets.symmetric(vertical: 25),
              height: 45,
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: (){},
                child: Text('Apply Now'),
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Colors.cyan,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  )
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}
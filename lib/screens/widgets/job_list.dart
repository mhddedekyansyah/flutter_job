import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/widgets/job_detail.dart';
import 'package:job_finder_app/screens/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final List<Job> joblist = Job.generateJob();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 25),
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 25),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context, 
              builder: (context) => JobDetail(joblist[index]));
          },
          child: JobItem(joblist[index])
          ), 
        separatorBuilder: (_, index) => SizedBox(width: 20,), 
        itemCount: joblist.length
        ),
    );
  }
}
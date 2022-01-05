import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_finder_app/models/job.dart';
import 'package:job_finder_app/screens/widgets/job_detail.dart';
import 'package:job_finder_app/screens/widgets/job_item.dart';

class SearchList extends StatelessWidget {
  final List<Job> jobList = Job.generateJob();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: EdgeInsets.only(top: 50,left: 25, right: 25),
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          showModalBottomSheet(
              backgroundColor: Colors.transparent,
              isScrollControlled: true,
              context: context, 
              builder: (context) => JobDetail(jobList[index]));
            },
        child: JobItem(jobList[index])
        ), 
      separatorBuilder: (_,index) => SizedBox(height: 15),
      itemCount: jobList.length);
  }
}
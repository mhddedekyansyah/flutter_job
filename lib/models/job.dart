class Job{
  String? company;
  String? logoUrl;
  bool? isMark;
  String? title;
  String? location;
  String? time;
  List<String>? req;
  Job({this.company,this.logoUrl,this.isMark,this.title,this.location,this.time,this.req});

  static List<Job> generateJob(){
    return [
      Job(
        company: 'Google LLC',
        logoUrl: 'assets/images/google_logo.png',
        isMark: true,
        title: 'Reseacher Engineer',
        location: 'New York\nUnited States',
        time: 'Fulltime',
        req: [
          'Creative with an eye for shape and colour',
          'Understand differents materials and production method',
          'How technical, pratical and scientific knowledge',
          'Interested in the way people choose and use product'
        ]
      ),
      Job(
        company: 'Airbnb inc',
        logoUrl: 'assets/images/airbnb_logo.png',
        isMark: false,
        title: 'Backend Developer',
        location: 'San Franscisco\nUnited States',
        time: 'Fulltime',
        req: [
          'Creative with an eye for shape and colour',
          'Understand differents materials and production method',
          'How technical, pratical and scientific knowledge',
          'Interested in the way people choose and use product'
        ]
      ),
      Job(
        company: 'Linked In',
        logoUrl: 'assets/images/linkedin_logo.png',
        isMark: false,
        title: 'Principle Product Design',
        location: 'California\nUnited States',
        time: 'Fulltime',
        req: [
          'Creative with an eye for shape and colour',
          'Understand differents materials and production method',
          'How technical, pratical and scientific knowledge',
          'Interested in the way people choose and use product'
        ]
      )
    ];
  }
}
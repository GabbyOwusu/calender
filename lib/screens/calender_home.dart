import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int month;
  @override
  void initState() {
    //Set the given month here
    month = 1;
    listOfDates();
    super.initState();
  }

  List dates = [];
  int numberOfweeks;
  int daysLeft;
  int days;

  List listOfDates() {
    //Assign the given year and month
    var now = DateTime(2021, month);

    //Pass the variable to the daysInMonth function to get the number of days
    //in the given month
    var totalDays = daysInMonth(now);

    //Use the generate method to generate indexes with the length as the number of
    //days in the month.
    var listOfDates = new List<int>.generate(totalDays, (i) {
      print('Day ${i + 1} ${i + 1}/1/2021');
      return i + 1;
    });
    return listOfDates;
  }

  int daysInMonth(DateTime date) {
    //First get the first day of the given month
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);

    //Then obtain the first day of the second month
    var firstDayNextMonth = new DateTime(
      firstDayThisMonth.year,
      firstDayThisMonth.month + 1,
      firstDayThisMonth.day,
    );

    //Using the difference method, find the difference between both months and
    //call inDays to get the integer value
    var numberOfDays = firstDayNextMonth.difference(firstDayThisMonth).inDays;

    //To get the weeks, multiply the number of days by 7
    var weeks = (numberOfDays ~/ 7);

    //To get the days after the weeks, multiply the weeks by 7 to get the total
    //number of days in 4weeks.
    //Then subtract it from the total number of days in the month
    var daysAfterWeeks = numberOfDays - (weeks * 7);

    setState(() {
      days = numberOfDays;
      numberOfweeks = weeks;
      daysLeft = daysAfterWeeks;
    });

    print(
      '$firstDayThisMonth has $numberOfDays full days \n $weeks weeks and $daysAfterWeeks days',
    );
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
      ),
      body: Scaffold(
        body: Center(
          child: Text(
            'This month has a full $days days with $numberOfweeks weeks and $daysLeft days',
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override

  // List listOfDates() {
  //   var now = DateTime(2021, month);

  //   var totalDays = daysInMonth(now);

  //   var listOfDates = new List<int>.generate(totalDays, (i) {
  //     print('Day ${i + 1} ${i + 1}/1/2021');
  //     return i + 1;
  //   });
  //   return listOfDates;
  // }

  // int daysInMonth(DateTime date) {
  //   var firstDayThisMonth = new DateTime(date.year, date.month, date.day);

  //   var firstDayNextMonth = new DateTime(
  //     firstDayThisMonth.year,
  //     firstDayThisMonth.month + 1,
  //     firstDayThisMonth.day,
  //   );

  //   var numberOfDays = firstDayNextMonth.difference(firstDayThisMonth).inDays;

  //   var weeks = (numberOfDays ~/ 7);

  //   var daysAfterWeeks = numberOfDays - (weeks * 7);

  //   setState(() {
  //     days = numberOfDays;
  //     numberOfweeks = weeks;
  //     daysLeft = daysAfterWeeks;
  //   });

  //   print(
  //     '$firstDayThisMonth has $numberOfDays full days \n $weeks weeks and $daysAfterWeeks days',
  //   );
  //   return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
      ),
      body: Scaffold(
        body: Center(
          child: Text(
            'This month has a full days with weeks and days',
          ),
        ),
      ),
    );
  }
}

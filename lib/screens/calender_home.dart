import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    listOfDates();
    super.initState();
  }

  void listOfDates() {
    //Select a given year and month with DateTime
    var now = DateTime(2020, 2);

    //Pass the variable to the daysInMonth function to get the number of days
    //per that month
    var totalDays = daysInMonth(now);

    //Use index of the list.generate , method to generate the exact dates for each of the numbers in each
    //days

    var listOfDates = new List<int>.generate(totalDays, (i) => i + 1);

    //Each index represents the date for a single day in the number of days of the given month
    print(listOfDates);
  }

  int daysInMonth(DateTime date) {
    // First get the first day of the given month
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);

    //Get the first day of the next month by incrementing the month number *DateTime works with inetegers*
    var firstDayOfNextMonth = new DateTime(
      firstDayThisMonth.year,
      firstDayThisMonth.month + 1,
      firstDayThisMonth.day,
    );

    //Find the difference between both months with the difference() method then call in days to get the exact ineteger value

    var numberOfDays = firstDayOfNextMonth.difference(firstDayThisMonth).inDays;

    //To get the weeks divide the number of days by 7 to get number of weeks

    var weeks = (numberOfDays ~/ 7);

    //To get the weeks and days left, multiply the weeks by 7 to get the number of days in the four weeks
    //Then subtract that from the number of days to get the remaining days after every 4 weeks of the
    //given month.

    var daysAfterWeeks = numberOfDays - (weeks * 7);

    print(
      '$firstDayThisMonth has $numberOfDays full days \n $weeks weeks and $daysAfterWeeks days',
    );

    return firstDayOfNextMonth.difference(firstDayThisMonth).inDays;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
      ),
      body: Container(),
    );
  }
}

import 'package:calender/models/months.dart';
import 'package:calender/provider/base_provider.dart';

class CalenderProvider extends BaseProvider {
  DateTime dateTime = DateTime(2021);
  Months months = Months();

  List<int> listOfDates(int month) {
    var now = DateTime(2021, month);
    var totalDays = daysInMonth(now);
    var listOfDates = new List<int>.generate(totalDays, (i) {
      print('Day ${i + 1} ${i + 1}/1/2021');
      return i + 1;
    });
    months.dates = listOfDates;
    notifyListeners();
    return listOfDates;
  }

  int daysInMonth(DateTime date) {
    var firstDayThisMonth = new DateTime(date.year, date.month, date.day);
    var firstDayNextMonth = new DateTime(
      firstDayThisMonth.year,
      firstDayThisMonth.month + 1,
      firstDayThisMonth.day,
    );
    var numberOfDays = firstDayNextMonth.difference(firstDayThisMonth).inDays;
    var weeks = (numberOfDays ~/ 7);
    var daysAfterWeeks = numberOfDays - (weeks * 7);
    months.days = numberOfDays;
    months.numberofWeeks = weeks;
    months.daysLeft = daysAfterWeeks;
    print(
      '$firstDayThisMonth has $numberOfDays full days \n $weeks weeks and $daysAfterWeeks days',
    );
    notifyListeners();
    return firstDayNextMonth.difference(firstDayThisMonth).inDays;
  }

  // List createCalender(Months month) {
  //   DateTime now = DateTime(2021, month.currentMonth);
  //   int alldays = days(now);
  //   List<int> allDates = List.generate(alldays, (index) {
  //     print('${index + 1} / ${month.currentMonth}/ 2021');
  //     return index + 1;
  //   }).toList();
  //   return allDates;
  // }

}

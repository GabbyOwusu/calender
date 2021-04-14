import 'package:calender/models/months.dart';
import 'package:calender/provider/base_provider.dart';

class CalenderProvider extends BaseProvider {
  DateTime dateTime = DateTime(2021);
  List<int> months;

  // void has30days(Months month) {
  //   if (months.monthName == 'September' ||
  //       months.monthName == 'April' ||
  //       months.monthName == 'June' ||
  //       months.monthName == 'November') {
  //     months.numberOfDays = 31;
  //   } else {
  //     month.numberOfDays = 30;
  //   }
  // }

  int days(DateTime date) {
    DateTime currenMonth = DateTime(date.year, date.month, date.day);
    DateTime nextMonth = DateTime(
      currenMonth.year,
      currenMonth.month + 1,
      currenMonth.day,
    );
    var daysInCurrentMonth = nextMonth.difference(currenMonth);
    print(nextMonth.difference(currenMonth));
    return daysInCurrentMonth.inDays;
  }

  List createCalender(Months month) {
    DateTime now = DateTime(2021, month.currentMonth);
    int alldays = days(now);
    List<int> allDates = List.generate(alldays, (index) {
      print('${index + 1} / ${month.currentMonth}/ 2021');
      return index + 1;
    }).toList();
    return allDates;
  }
}

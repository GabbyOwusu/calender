import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int alldays;
  Widget pageControls(IconData iconData, Function ontapped) {
    return GestureDetector(
      onTap: ontapped,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(
          iconData,
          size: 12,
        ),
      ),
    );
  }

  List days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calender'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                pageControls(Icons.arrow_back_ios, () {}),
                Text(
                  'January',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                pageControls(Icons.arrow_forward_ios, () {}),
              ],
            ),
            SizedBox(height: 20),
            DataTable(
              columnSpacing: 30,
              columns: [
                ...List.generate(
                  days.length,
                  (index) {
                    return DataColumn(
                      label: Text(
                        '${days[index]}',
                        style: TextStyle(
                          color: index == 0 ? Colors.blue : Colors.black,
                        ),
                      ),
                    );
                  },
                )
              ],
              rows: [
                ...List.generate(30 ~/ 7, (index) {
                  setState(() {
                    alldays = index;
                  });
                  return DataRow(cells: [
                    ...List.generate(days.length, (index) {
                      return DataCell(
                        Text(
                          "${30 / 4 + alldays}",
                        ),
                      );
                    })
                  ]);
                })
              ],
            )
          ],
        ),
      ),
    );
  }
}

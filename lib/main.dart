import 'package:calender/provider/calender_provider.dart';
import 'package:calender/screens/calender_home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<CalenderProvider>(
          create: (contex) => CalenderProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Calender',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MyHomePage(),
      ),
    );
  }
}

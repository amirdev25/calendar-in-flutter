import 'package:calendar/calendar_page.dart';
import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CalendarControllerProvider(
        controller: EventController(),
        child:  CalendarPage(),
      ),
    );
  }
}

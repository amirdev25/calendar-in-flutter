import 'package:calendar_view/calendar_view.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  CalendarPage({Key? key}) : super(key: key);

  EventController controller = EventController();

  @override
  Widget build(BuildContext context) {
    final event = CalendarEventData(
      date: DateTime(2023, 3, 10),
      endDate: DateTime(2023, 3, 10),
      event: "Event 1",
      title: 'Test 1',
      color: Colors.redAccent,
    );
    final event1 = CalendarEventData(
      date: DateTime(2023, 3, 10),
      endDate: DateTime(2023, 3, 10),
      event: "Event 1",
      title: 'Test 2',
      color: Colors.black,
    );

    CalendarControllerProvider.of(context).controller.add(event);
    CalendarControllerProvider.of(context).controller.add(event1);

    return Scaffold(
      appBar: AppBar(
        title: Text("CalendarView"),
      ),
      body: Container(
        child: MonthView(
          onCellTap: (events, date) {},
        ),
      ),
    );
  }
}

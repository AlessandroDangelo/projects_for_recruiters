import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart' show AvailableGestures, HeaderStyle, TableCalendar, isSameDay;

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {

  DateTime today = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay){
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Kome Keto"),),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Selected Day = ${today.toString().split(" ")[0]}",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              child: TableCalendar(
                locale: "pt_BR",
                rowHeight: 43,
                headerStyle: HeaderStyle(formatButtonVisible: false, titleCentered: true),
                availableGestures: AvailableGestures.all,
                selectedDayPredicate: (day) => isSameDay(day, today),
                focusedDay: today, 
                firstDay: DateTime.utc(2010, 10, 16), 
                lastDay: DateTime.utc(2030, 3, 14),
                onDaySelected: _onDaySelected,
              ),
            ),
          ]
        )
      )
    );
  }
}
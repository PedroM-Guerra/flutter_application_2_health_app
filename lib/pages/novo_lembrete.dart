import 'package:flutter/material.dart';
import 'package:time_picker_spinner/time_picker_spinner.dart';
import 'package:day_picker/day_picker.dart';

class NovoLembrete extends StatefulWidget {
  const NovoLembrete({super.key});

  @override
  State<NovoLembrete> createState() => _NovoLembreteState();
}

class _NovoLembreteState extends State<NovoLembrete> {
  var dateTime = DateTime.now();

  final List<DayInWeek> _days = [
    DayInWeek("Seg", dayKey: "monday"),
    DayInWeek("Ter", dayKey: "tuesday"),
    DayInWeek("Qua", dayKey: "wednesday"),
    DayInWeek("Qui", dayKey: "thursday"),
    DayInWeek("Sex", dayKey: "friday"),
    DayInWeek("Sab", dayKey: "saturday", isSelected: true),
    DayInWeek("Dom", dayKey: "sunday", isSelected: true),
  ];

  void handleOnSelect(List<String> days) {
    //TODO: Manipulate the List of days selected
    //print(days);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 15,
        backgroundColor: Colors.purple[50],
        title: Text('Novo Lembrete'),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.check),
            ),
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      labelText: 'Nome do Lembrete',
                      alignLabelWithHint: false,
                    ),
                  )),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
            child: Card(
              color: Color.fromRGBO(218, 209, 209, 100),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
                child: TimePickerSpinner(
                  locale: const Locale('en', ''),
                  time: dateTime,
                  is24HourMode: false,
                  isShowSeconds: false,
                  itemHeight: 80,
                  normalTextStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                  ),
                  highlightedTextStyle:
                      const TextStyle(fontSize: 24, color: Colors.black),
                  isForce2Digits: true,
                  onTimeChange: (time) {
                    setState(() {
                      dateTime = time;
                    });
                  },
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
            child: SelectWeekDays(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                selectedDaysFillColor: Colors.purple[50],
                unSelectedDayTextColor: Colors.black,
                days: _days,
                border: false,
                width: MediaQuery.of(context).size.width / 1.4,
                boxDecoration: BoxDecoration(
                  color: Color.fromRGBO(218, 209, 209, 100),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                onSelect: (values) {
                  print(values);
                }),
          ),
        ],
      ),
    );
  }
}

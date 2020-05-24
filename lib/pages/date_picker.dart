import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class DatePicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return DatePickerState();
  }
}

class DatePickerState extends State<DatePicker> {

  var date=DateTime.now();
  TimeOfDay time;

  @override
  void initState() {
    super.initState();
    time=TimeOfDay(hour: date.hour, minute: date.minute);
    //print(now);//2020-05-24 09:32:02.308065
    //print(now.millisecondsSinceEpoch);//1590283882112
    //print(DateTime.fromMillisecondsSinceEpoch(1590283882112));//2020-05-24 09:31:22.112
    //print(formatDate(DateTime.now(), [yyyy, '年', mm, '月', dd,'日']));
  }

  _showDatePicker() async{
    /*showDatePicker(
        context: context,
        initialDate: now,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100)
    ).then((value) => print(value));*/
    var result=await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1980),
        lastDate: DateTime(2100)
    );
    setState(() {
      date=result;
    });
  }

  _showTimePicker() async{
    var result=await showTimePicker(
        context: context,
        initialTime: time
    );
    setState(() {
      time=result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              child: Row(
                children: <Widget>[
                  Text(formatDate(date, [yyyy, '-', mm, '-', dd])),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showDatePicker,
            ),
            InkWell(
              child: Row(
                children: <Widget>[
                  Text('${time.format(context)}'),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showTimePicker,
            )
          ],
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_cupertino_date_picker/flutter_cupertino_date_picker.dart';
import 'package:date_format/date_format.dart';

class DatePickPub extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>DatePickPubState();
}

class DatePickPubState extends State<DatePickPub>{

  DateTime _dateTime=DateTime.now();

  _showDatePicker(){
    DatePicker.showDatePicker(
      context,
      onMonthChangeStartWithFirstDate: true,
      pickerTheme: DateTimePickerTheme(
        showTitle: true,
        confirm: Text('确定', style: TextStyle(color: Colors.red)),
        cancel: Text('取消', style: TextStyle(color: Colors.cyan)),
      ),
      minDateTime: DateTime.parse('1980-05-12'),
      maxDateTime: DateTime.parse('2100-11-25'),
      initialDateTime: _dateTime,
      //dateFormat: 'yyyy-MMMM-dd',
      dateFormat: 'yyyy年M月d日    EEE,H时:m分',
      pickerMode: DateTimePickerMode.datetime, // show TimePicker
      locale: DateTimePickerLocale.zh_cn,
      onClose: () => print("----- onClose -----"),
      onCancel: () => print('onCancel'),
      /*onChange: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },*/
      onConfirm: (dateTime, List<int> index) {
        setState(() {
          _dateTime = dateTime;
        });
      },
    );
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
                  Text(formatDate(_dateTime, [yyyy, '年', mm, '月', dd,'日',HH, ':', nn])),
                  Icon(Icons.arrow_drop_down)
                ],
              ),
              onTap: _showDatePicker,
            ),
          ],
        )
      ],
    );
  }
  
}
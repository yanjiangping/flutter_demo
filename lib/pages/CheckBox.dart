import 'package:flutter/material.dart';

class CheckBoxPage extends StatefulWidget {
  @override
  _CheckBoxPageState createState() => _CheckBoxPageState();
}

class _CheckBoxPageState extends State<CheckBoxPage> {
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Checkbox(
            activeColor: Colors.red,
            value: flag,
            onChanged: (v) {
              setState(() {
                flag = v;
              });
            }),
        Text(flag ? '选中' : '未选中'),
        CheckboxListTile(
            selected: flag,
            title: Text('标题'),
            subtitle: Text('二级标题'),
            value: flag,
            onChanged: (v) {
              setState(() {
                flag = v;
              });
            }),
        Divider(),
        CheckboxListTile(
            selected: flag,
            secondary: Icon(Icons.home),
            title: Text('标题'),
            subtitle: Text('二级标题'),
            value: flag,
            onChanged: (v) {
              setState(() {
                flag = v;
              });
            }),
      ],
    );
  }
}

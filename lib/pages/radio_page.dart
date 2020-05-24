import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RadioPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return RadioPageState();
  }
  
}
class RadioPageState extends State<RadioPage>{

  int sex=1;

  var flag=true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          /*Row(
            children: <Widget>[
              Text('男:'),
              Radio(
                  value: 1,
                  groupValue: sex,
                  onChanged: (v){
                    setState(() {
                      sex=v;
                    });
                  }
              ),
              SizedBox(width: 20),
              Text('女:'),
              Radio(
                  value: 2,
                  groupValue: sex,
                  onChanged: (v){
                    setState(() {
                      sex=v;
                    });
                  }
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(sex==1?'男':'女')
            ],
          )*/
          RadioListTile(
            selected: sex==1,
            activeColor: Colors.red,
            secondary: Icon(Icons.home),
            title: Text('标题'),
              subtitle: Text('副标题'),
              value: 1,
              groupValue: sex,
              onChanged: (v){
                setState(() {
                  sex=v;
                });
              }
              ),
          RadioListTile(
              selected: sex==2,
              activeColor: Colors.red,
              secondary: Image.network('https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2832826449,831072255&fm=26&gp=0.jpg'),
              title: Text('标题'),
              subtitle: Text('副标题'),
              value: 2,
              groupValue: sex,
              onChanged: (v){
                setState(() {
                  sex=v;
                });
              }
          ),
          SizedBox(height: 40),
          Switch(
              value: flag,
              onChanged: (v){
                setState(() {
                  flag=v;
                });
              }
          )
        ],
      ),
    );
  }
  
}
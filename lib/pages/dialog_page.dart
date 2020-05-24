import 'package:flutter/material.dart';
import 'package:flutter_demo/components/MyDialog.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DialogPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DialogPageState();
}

class DialogPageState extends State<DialogPage> {
  _alertDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('提示信息'),
            content: Text('您确定要删除吗？'),
            actions: <Widget>[
              FlatButton(
                  onPressed: () {
                    print('取消');
                    Navigator.pop(context, 'close');
                  },
                  child: Text('取消')),
              FlatButton(
                  onPressed: () {
                    print('确定');
                    Navigator.pop(context, 'ok');
                  },
                  child: Text('确定'))
            ],
          );
        });
    print(result);
  }

  _simpleDialog() async {
    var result = await showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('选择内容'),
            children: <Widget>[
              SimpleDialogOption(
                child: Text('option a'),
                onPressed: () {
                  print('option a');
                  Navigator.pop(context, 'a');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option b'),
                onPressed: () {
                  print('option b');
                  Navigator.pop(context, 'b');
                },
              ),
              Divider(),
              SimpleDialogOption(
                child: Text('option c'),
                onPressed: () {
                  print('option c');
                  Navigator.pop(context, 'c');
                },
              )
            ],
          );
        });
    print(result);
  }

  _modelButtonSheet() async {
    var result = await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            height: 200,
            child: Column(
              children: <Widget>[
                ListTile(
                  title: Text('分享1'),
                  onTap: () {
                    Navigator.pop(context, '1');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享2'),
                  onTap: () {
                    Navigator.pop(context, '2');
                  },
                ),
                Divider(),
                ListTile(
                  title: Text('分享3'),
                  onTap: () {
                    Navigator.pop(context, '3');
                  },
                ),
              ],
            ),
          );
        }
    );
    print(result);
  }

  _flutterToast() {
    Fluttertoast.showToast(
        msg: "This is Center Short Toast",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(onPressed: _alertDialog, child: Text('alertDialog')),
          SizedBox(height: 20),
          RaisedButton(onPressed: _simpleDialog, child: Text('simpleDialog')),
          SizedBox(height: 20),
          RaisedButton(
              onPressed: _modelButtonSheet, child: Text('modelButtonSheet')),
          SizedBox(height: 20),
          RaisedButton(onPressed: _flutterToast, child: Text('flutterToast')),
          SizedBox(height: 20),
          RaisedButton(onPressed: () {
            showDialog(context: context, builder: (context) {
              return MyDialog(title:'关于我们1',content:'我是内容11');
            });
          }, child: Text('自定义dialog')),
        ],
      ),
    );
  }
}

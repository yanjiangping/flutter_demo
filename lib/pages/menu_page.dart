import 'package:flutter/material.dart';
import 'package:flutter_demo/tools/EventBus.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {

  List pageList=['/dragPage','/scrollViewPage','/gestureRecognizerTest','/bothDirectionPage','/notificationPage'];
  List pageName=['拖动','滑动','点击变色','双向拖动','通知'];

  @override
  initState(){
    super.initState();
    //监听事件
    bus.on("add", (arg) {
      // do something
      print('arg:$arg');
    });
  }

  List<Widget> getMenu(){
    List<Widget> buttonList=[];
    for(int i=0;i<pageList.length;i++){
      buttonList.add(Container(
        padding: EdgeInsets.all(10),
        child: RaisedButton(
            child: Text(pageName[i]),
            onPressed: ()=> Navigator.pushNamed(context, pageList[i])
        ),
      ));
    }
    return buttonList;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: getMenu(),
    );
  }
}

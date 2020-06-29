import 'package:flutter/material.dart';
import 'package:flutter_demo/tools/EventBus.dart';
class DetailPage extends StatelessWidget {

  final arguments;

  DetailPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //Navigator.pop(context);
          //Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: ((context)=>MyApp())), (route) => false);
          Navigator.pushNamed(context, 'tabBarControllerPage');
        },
        child: Text('a'),
        ),
      appBar: AppBar(
        actions: <Widget>[
          IconButton(icon: Icon(Icons.add), onPressed: (){
            bus.emit("add", 'aaa');
          })
        ],
        title: Text('详情标题'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            arguments==null?'新闻标题':arguments['title'],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 18
            ),
          ),
          SizedBox(height: 20),
          Text(arguments==null?'新闻内容':arguments['content']),
          SizedBox(height: 20),
          Image.network(arguments==null?'':arguments['img'])
        ],
      ),
    );
  }
}
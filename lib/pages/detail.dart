import 'package:flutter/material.dart';
class DetailPage extends StatelessWidget {

  final arguments;

  DetailPage({this.arguments});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.pop(context),
        child: Text('返回'),
        ),
      appBar: AppBar(
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
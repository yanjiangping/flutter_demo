import 'package:flutter/material.dart';
import 'package:flutter_demo/data.dart';
import 'package:flutter_demo/routes/Routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('我是标题'),
        ),
        body: LayoutDemo(),
      ),
      // routes: {
      //   'detail':(context)=>DetailPage()
      // },
      onGenerateRoute: onGenerateRoute,
      //initialRoute: Tabs(),
    );
  }
}

class LayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: list.map((value) {
        return FlatButton(
          padding: EdgeInsets.all(10),
          onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(title: value['title'])));
            Navigator.pushNamed(context, 'detail',arguments: {
              'title':value['title'],
              'content':value['content'],
              'img':value['img']
            });
          },
          child: Card(
          child: Column(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 2 / 1,
                child: Image.network(value['img'], fit: BoxFit.cover),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(value['head']),
                ),
                title: Text(value['title']),
                subtitle: Text(value['content'],overflow: TextOverflow.ellipsis,maxLines: 2),
              )
            ],
          ),
        )
          );
      }).toList(),
    );
  }
}

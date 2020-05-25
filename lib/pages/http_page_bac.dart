import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HttpPage extends StatefulWidget {
  @override
  _HttpPageState createState() => _HttpPageState();
}

class _HttpPageState extends State<HttpPage> {

  List list=[];

  _getData() async{
    var url='http://a.itying.com/api/productlist';
    var result=await http.get(url);
    if(result.statusCode==200){
      print(result.body);
      setState(() {
        list=json.decode(result.body)['result'];
      });
    }else{
      print('失败${result.statusCode}');
    }
  }

  @override
  void initState() {
    super.initState();
    _getData();
  }

  @override
  Widget build(BuildContext context) {
    return list.length>0?
    /*ListView(
      children: list.map((value){
        return ListTile(
          title: Text(value['title']),
        );
      }).toList(),
    ) : */
    ListView.builder(
        itemCount: list.length,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("标题名称：${list[index]['title']}"),
          );
        }
    ):
    Text('加载中。。。');
  }
}

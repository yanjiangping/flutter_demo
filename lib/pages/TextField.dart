import 'package:flutter/material.dart';

class TextFiledPage extends StatefulWidget {
  @override
  _TextFiledPageState createState() => _TextFiledPageState();
}

class _TextFiledPageState extends State<TextFiledPage> {

  var userName=TextEditingController();
  var password;

  @override
  void initState() {
    super.initState();
    userName.text='初始值';
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(20),
        //child: TextDemo(),
        child: Column(
          children: <Widget>[
            TextField(
              controller: userName,
              decoration: InputDecoration(
                hintText: '请输入用户名'
              ),
            ),
            SizedBox(height:20),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '请输入密码'
              ),
              onChanged: (value){
                password=value;
              },
            ),
            SizedBox(height:20),
            Container(
              width: double.infinity,
              height: 40,
              child: RaisedButton(
                child: Text('登录'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: (){
                  print(userName.text);
                  print(password);
                }
                ),
            )
          ],
        ),
        );
  }
}

class TextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            TextField(obscureText: true),
            SizedBox(height: 20),
            TextField(
              maxLines: 4,
              minLines: 2,
              decoration: InputDecoration(
                labelText: '请输入',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                hintText: '用户名',
                icon: Icon(Icons.people)
                //labelStyle: TextStyle()
              ),
            )
          ],
        );
  }
}
import 'package:flutter/material.dart';

class AppBarDemoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.yellow,
            child: Icon(
              Icons.add,
              color: Colors.black,
              size: 36,
              ),
            onPressed: (){
              print('aa');
            }
            ),
            floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
            appBar: AppBar(
                bottom: TabBar(
                    indicatorColor: Colors.green,
                    labelColor: Colors.yellow,
                    unselectedLabelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: <Widget>[Tab(text: '热门'), Tab(text: '推荐')]),
                centerTitle: true,
                backgroundColor: Colors.red,
                leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () => Navigator.pop(context)),
                actions: <Widget>[
                  IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () => print('search')),
                  IconButton(
                      icon: Icon(Icons.settings),
                      onPressed: () => print('settings')),
                ],
                title: Text('aaa')),
            body: TabBarView(children: [
              Text('a'),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      RaisedButton(
                          elevation: 30, //阴影
                          color: Colors.blue,
                          textColor: Colors.white,
                          child: Text('按钮'),
                          onPressed: () {
                            print('普通按钮');
                          }),
                      SizedBox(width: 5),
                      Container(
                        height: 50,
                        width: 60,
                        child: RaisedButton(
                            child: Text('按钮'),
                            onPressed: () {
                              print('普通按钮');
                            }),
                      ),
                      Container(
                        height: 40,
                        child: RaisedButton(
                          splashColor: Colors.red,
                          shape: CircleBorder(
                            side: BorderSide(
                              color: Colors.white
                            )
                          ),
                          child: Text('按钮'),
                          onPressed: () {
                            print('普通按钮');
                          }),
                      ),
                      RaisedButton.icon(
                        color: Colors.blue,
                        textColor: Colors.white,
                        onPressed: () {
                              print('图标按钮');
                            }, 
                        icon: Icon(Icons.save), 
                        label: Text('图标按钮')
                        )
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                            height: 60,
                            margin: EdgeInsets.all(10),
                            child: RaisedButton(
                              child: Text('圆角按钮'),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              ),
                              ),
                      ))
                    ],
                  ),
                  FlatButton(
                    color: Colors.blue,
                    textColor: Colors.white,
                    onPressed: (){}, 
                    child: Text('扁平按钮')
                    )
                ],
              )
            ])));
  }
}

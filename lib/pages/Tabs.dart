import 'package:flutter/material.dart';
import 'package:flutter_demo/pages/appBarDemo.dart';
import 'package:flutter_demo/pages/radio_page.dart';
import 'package:flutter_demo/pages/swiper_page.dart';
import 'CheckBox.dart';
import 'ConstrainedBoxPage.dart';
import 'FutureStreamPage.dart';
import 'Home.dart';
import 'ScrollViewPage.dart';
import 'Setting.dart';
import 'TextField.dart';
import 'ThemeTestRoute.dart';
import 'card_settings_page.dart';
import 'date_pick_pub.dart';
import 'date_picker.dart';
import 'dialog_page.dart';
import 'http_page_bac.dart';
import 'menu_page.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int pageIndex;
  List pageList=[MenuPage(),HomePage(),RadioPage()];

  _TabsPageState({this.pageIndex:0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        height:60,
        width: 60,
        // decoration: BoxDecoration(
        //   borderRadius: BorderRadius.circular(40),
        //   color: Colors.white,
        // ),
        margin: EdgeInsets.only(top:5),
        //padding: EdgeInsets.all(10),
        /*child: FloatingActionButton(
          backgroundColor: pageIndex==1?Colors.red:Colors.yellow,
          child: Icon(
            Icons.add,
            color: Colors.black,
            size: 36,
            ),
          onPressed: (){
            setState(() {
              pageIndex=1;
            });
          }
          ),*/
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      appBar: AppBar(
        title: Text('我是标题'),
      ),
      body: pageList[pageIndex],
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  // child: DrawerHeader(
                  //   child: Text('qq'),
                  //   decoration: BoxDecoration(
                  //       image: DecorationImage(
                  //           fit: BoxFit.cover,
                  //           image: NetworkImage(
                  //               'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3320548298,2876777688&fm=26&gp=0.jpg'))),
                  // ),
                  child: UserAccountsDrawerHeader(
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://ss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=3320548298,2876777688&fm=26&gp=0.jpg'))),
                    accountName: Text('aa'),
                    accountEmail: Text('bb'),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://ss0.bdstatic.com/70cFvHSh_Q1YnxGkpoWK1HF6hhy/it/u=2832826449,831072255&fm=26&gp=0.jpg'),
                    ),
                  ),
                )
              ],
            ),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.settings)),
              title: Text('aaa'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context,'appBarDemo');
              },
            ),
            Divider(),
            ListTile(
              leading: CircleAvatar(child: Icon(Icons.people)),
              title: Text('bbb'),
            )
          ],
        ),
      ),
      endDrawer: Drawer(child: Text('bbb')),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        type: BottomNavigationBarType.fixed,//配置底部可以有多个按钮
          onTap: (index){  
            setState(() {
              pageIndex = index;
            });
            },
          currentIndex: pageIndex,
          items: [
            BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
            BottomNavigationBarItem(title: Text('分类'), icon: Icon(Icons.score)),
            BottomNavigationBarItem(title: Text('设置'), icon: Icon(Icons.settings))
          ]),
    );
  }
}

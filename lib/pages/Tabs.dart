import 'package:flutter/material.dart';
import 'Home.dart';
import 'Setting.dart';

class TabsPage extends StatefulWidget {
  @override
  _TabsPageState createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int pageIndex;
  List pageList=[HomePage(),SettingPage()];

  _TabsPageState({this.pageIndex:0});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          onTap: (index){  
            setState(() {
              pageIndex = index;
            });
            },
          currentIndex: pageIndex,
          items: [
            BottomNavigationBarItem(title: Text('首页'), icon: Icon(Icons.home)),
            BottomNavigationBarItem(
                title: Text('设置'), icon: Icon(Icons.settings))
          ]),
    );
  }
}

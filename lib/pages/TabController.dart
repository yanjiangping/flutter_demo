import 'package:flutter/material.dart';

class TabBarControllerPage extends StatefulWidget {
  @override
  _TabBarControllerPageState createState() => _TabBarControllerPageState();
}

class _TabBarControllerPageState extends State<TabBarControllerPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
    _tabController.addListener(() { 
      print(_tabController.index);
    });
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          bottom: TabBar(
              controller: _tabController,
              indicatorColor: Colors.green,
              labelColor: Colors.yellow,
              unselectedLabelColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[Tab(text: '热门'), Tab(text: '推荐')])),
      body: TabBarView(
        controller: _tabController,
        children: [
        Text('a'),
        Text('b')
      ]),
    );
  }
}

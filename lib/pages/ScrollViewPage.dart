import 'package:flutter/material.dart';

class ScrollViewPage extends StatefulWidget {
  @override
  _ScrollViewPageState createState() => _ScrollViewPageState();
}

class _ScrollViewPageState extends State<ScrollViewPage> {

  /*ScrollController _controller = new ScrollController();
  bool showToTopBtn = false; //是否显示“返回到顶部”按钮*/

  String _progress = "0%"; //保存进度百分比

 /* @override
  void initState() {
    super.initState();
    //监听滚动事件，打印滚动位置
    _controller.addListener(() {
      print(_controller.offset); //打印滚动位置
      if (_controller.offset < 1000 && showToTopBtn) {
        setState(() {
          showToTopBtn = false;
        });
      } else if (_controller.offset >= 1000 && showToTopBtn == false) {
        setState(() {
          showToTopBtn = true;
        });
      }
    });
  }

  @override
  void dispose() {
    //为了避免内存泄露，需要调用_controller.dispose
    _controller.dispose();
    super.dispose();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scrollbar( //进度条
      // 监听滚动通知
      child: NotificationListener<ScrollNotification>(
        onNotification: (ScrollNotification notification) {
          double progress = notification.metrics.pixels /
              notification.metrics.maxScrollExtent;
          //重新构建
          setState(() {
            _progress = "${(progress * 100).toInt()}%";
          });
          print("BottomEdge: ${notification.metrics.extentAfter == 0}");
          //return true; //放开此行注释后，进度条将失效
        },
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            ListView.builder(
                itemCount: 100,
                itemExtent: 50.0,
                itemBuilder: (context, index) {
                  return ListTile(title: Text("$index"));
                }
            ),
            CircleAvatar(  //显示进度百分比
              radius: 30.0,
              child: Text(_progress),
              backgroundColor: Colors.black54,
            )
          ],
        ),
      ),
    );


   /* return Scaffold(
      appBar: AppBar(title: Text("滚动控制")),
      body: Scrollbar(
        child: ListView.builder(
            itemCount: 100,
            itemExtent: 50.0, //列表项高度固定时，显式指定高度是一个好习惯(性能消耗小)
            controller: _controller,
            itemBuilder: (context, index) {
              return ListTile(title: Text("$index"),);
            }
        ),
      ),
      floatingActionButton: !showToTopBtn ? null : FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            //返回到顶部时执行动画
            _controller.animateTo(.0,
                duration: Duration(milliseconds: 200),
                curve: Curves.ease
            );
          }
      ),
    );*/

    /*return Column(children: <Widget>[
      ListTile(title:Text("商品列表")),
      Expanded(
        child: ListView.builder(itemBuilder: (BuildContext context, int index) {
          return ListTile(title: Text("$index"));
        }),
      ),
    ]);*/


    /*return CustomScrollView(
      slivers: <Widget>[
        //AppBar，包含一个导航栏
        SliverAppBar(
          pinned: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: const Text('Demo'),
            background: Image.asset(
              "./images/avatar.png", fit: BoxFit.cover,),
          ),
        ),

        SliverPadding(
          padding: const EdgeInsets.all(8.0),
          sliver: new SliverGrid( //Grid
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, //Grid按两列显示
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                //创建子widget
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.cyan[100 * (index % 9)],
                  child: new Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ),
        //List
        new SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: new SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                //创建列表项
                return new Container(
                  alignment: Alignment.center,
                  color: Colors.lightBlue[100 * (index % 9)],
                  child: new Text('list item $index'),
                );
              },
              childCount: 50 //50个列表项
          ),
        ),
      ],
    );*/


  }
}

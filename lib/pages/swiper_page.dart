import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import '../data.dart';

class SwiperPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SwiperPageState();
}

class SwiperPageState extends State<SwiperPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16/9,
          /*child: Swiper(
            autoplay: true,
            itemBuilder: (BuildContext context,int index){
              return new Image.network(list[index]['img'],fit: BoxFit.cover,);
            },
            itemCount: list.length,
            pagination: new SwiperPagination(),
            //control: new SwiperControl(),
          ),*/
          child: Swiper(
              layout: SwiperLayout.CUSTOM,
              customLayoutOption:
                  new CustomLayoutOption(startIndex: -1, stateCount: 3)
                      .addRotate([-45.0 / 180, 0.0, 45.0 / 180]).addTranslate([
                new Offset(-370.0, -40.0),
                new Offset(0.0, 0.0),
                new Offset(370.0, -40.0)
              ]),
              itemWidth: 300.0,
              itemHeight: 200.0,
              itemBuilder: (context, index) {
                return new Container(
                  //color: Colors.grey,
                  child: new Center(
                    child: new Image.network(list[index]['head'],fit: BoxFit.cover,),
                  ),
                );
              },
              itemCount: list.length),
        )
      ],
    );
  }
}

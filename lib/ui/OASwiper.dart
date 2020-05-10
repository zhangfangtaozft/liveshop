import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class SwiperPage extends StatefulWidget {
  SwiperPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SwiperPageState createState() => new _SwiperPageState();
}

class _SwiperPageState extends State<SwiperPage> {

  List<Map> data = [
    {"url": "images/swipe1.png"},
    {"url": "images/swipe1.png"},
    {"url": "images/swipe1.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return
      Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child:
              Image.asset(
                this.data[index]["url"],
                fit: BoxFit.fill,
              )
          );
        },
        itemCount: this.data.length,
        pagination: SwiperPagination(),
        control: SwiperControl(),
      );
  }
}

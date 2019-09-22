import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';


class BannerWiget extends StatelessWidget {
  List<String> banner = <String>[
    'assets/images/banner/1.jpg',
    'assets/images/banner/2.jpg',
    'assets/images/banner/3.jpeg',
    'assets/images/banner/4.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hieght = width*540.0/1080.0;

    return Container(
      width: width,
      height: hieght,
      child: Swiper(
        itemBuilder: (BuildContext context,index){
          return Container(
            margin: EdgeInsets.only(left: 5,right: 5),
            child:Image.asset(
              banner[index],
              width: width,
              height: hieght,
            ),
          );
        },
        itemCount: banner.length,
        scrollDirection: Axis.horizontal,
        autoplay: true,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:clients/model/product.dart';


class Products extends StatelessWidget {

  final ProductListModel list;

  Products(this.list);

  @override
  Widget build(BuildContext context) {

    double deviceWidth = MediaQuery.of(context).size.width;
    return Container(
      width: deviceWidth,
      color: Colors.white,
      padding: EdgeInsets.only(top: 10,bottom: 10,left: 7.5),
      child: _build(context,deviceWidth),
    );
  }

  Widget _build(BuildContext context,double deviceWidth){
    double itemWidth = deviceWidth *168.5/360;
    double imageWidth = deviceWidth *110.0/360;

    List<Widget> listWidgets = list.data.map((i){
      return Container(
        width: imageWidth,
        margin: EdgeInsets.only(bottom: 5,left: 2),
        padding: EdgeInsets.only(top: 10,bottom: 13,left: 7),
        color: Colors.grey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              i.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.white),
            ),
            Text(
              i.desc,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 15,color: Colors.white),
            ),
            Container(
              alignment: Alignment(0, 0),
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(
                i.imageUrl,
                width: imageWidth,
                height: imageWidth,
              ),
            ),
          ],
        ),
      );
    }).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 5,bottom: 10),
          child: Text('ບໍລີການ',style: TextStyle(fontSize: 16.0,color:Color.fromRGBO(51, 51, 51, 1)),),
        ),
        Wrap(
          spacing: 2,
          children: listWidgets,
        )
      ],
    );
  }
}

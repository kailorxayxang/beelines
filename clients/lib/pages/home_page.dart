import 'package:flutter/material.dart';
import 'package:clients/banner/banner.dart';
import 'package:clients/services/product.dart';
import 'package:clients/model/product.dart';

import 'home_product/products.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  ProductListModel listdata = ProductListModel([]);


  void getProductList() async{
    var data = await getProductResult();

    ProductListModel list = ProductListModel.fromeJson(data);

    setState(() {
      listdata.data.addAll(list.data);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    getProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          BannerWiget(),
          Products(listdata)
        ],
      ),
    );
  }
}

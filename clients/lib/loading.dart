import 'package:flutter/material.dart';
import 'dart:async';

class loadingPage extends StatefulWidget {
  @override
  _loadingPageState createState() => _loadingPageState();
}

class _loadingPageState extends State<loadingPage> {

  @override
  void initState(){
    super.initState();

    Future.delayed(Duration(seconds: 3),(){
      print("Flutterssss");
      Navigator.of(context).pushReplacementNamed('app');
    });
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Stack(
          children: <Widget>[
            //loading images
            Image.asset('assets/images/loadingPages/loading.jpeg'),
            Center(
               child: Text(
                 "ການຕື່ມມູນຄ່າໂທ",
                 style: TextStyle(
                   color: Colors.white,
                   fontSize: 36.0,
                   decoration: TextDecoration.none
                 ),
               ),
            ),
          ],
        ), 
      ),
    );
  }
}

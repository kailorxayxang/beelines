import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'app.dart';
import 'loading.dart';

void main()=>runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: "hoda application",
  theme: mDefaultTheme,
  routes: <String,WidgetBuilder>{
    "app":(BuildContext context)=> App(),
    "company_info":(BuildContext context)=>WebviewScaffold(
      url:"https://baidu.com",
       appBar: AppBar(
         title: Text('conpany'),
         leading: IconButton(
           icon: Icon(Icons.home),
           onPressed: (){
             Navigator.of(context).pushReplacementNamed('app');
           },
         ),
       ),
    )
  },
  home: loadingPage(),
));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.redAccent,
);
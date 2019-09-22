import 'package:flutter/material.dart';
import 'pages/about_page.dart';
import 'pages/home_page.dart';
import 'pages/news_page.dart';
import 'pages/product_page.dart';
import 'pages/message_Pages.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  var _currentIndex = 0;

  Home homePage;
  Product productPage;
  News newPage;
  About aboutPage;
  MessagesPages messages;

//  setpages
  currentUsPages() {
    switch (_currentIndex) {
      case 0:
        if (homePage == null) {
          homePage = Home();
        }
        return homePage;
      case 1:
        if (messages == null) {
          messages = MessagesPages();
        }
        return messages;
      case 2:
        if (productPage == null) {
          productPage = Product();
        }
        return productPage;
      case 3:
        if (newPage == null) {
          newPage = News();
        }
        return newPage;
      case 4:
        if (aboutPage == null) {
          aboutPage = About();
        }
        return aboutPage;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('JPower Sotf'),
        leading: Icon(Icons.home),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.search,
              ),
            ),
          )
        ],
      ),
      body: currentUsPages(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: ((index) {
          setState(() {
            _currentIndex = index;
          });
        }),
        items: [
          BottomNavigationBarItem(
            title: Text('ໜ້າຫຼັກ'),
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            title: Text('ສົ່ງຂໍ້ຄວາມ'),
            icon: Icon(Icons.insert_comment),
          ),
          BottomNavigationBarItem(
            title: Text('ບໍລີການ'),
            icon: Icon(Icons.ac_unit),
          ),
          BottomNavigationBarItem(
            title: Text('ຂ່າວສານ'),
            icon: Icon(Icons.fiber_new),
          ),
          BottomNavigationBarItem(
            title: Text('ຂ້ອຍ'),
            icon: Icon(Icons.score),
          )
        ],
      ),
    );
  }
}

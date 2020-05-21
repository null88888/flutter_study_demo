import 'package:flutter/material.dart';
import 'package:flutterstudydemo/home/home.dart';
import 'package:flutterstudydemo/demo/list/alllistdemo.dart';
import 'package:flutterstudydemo/demo/components/material_components.dart';


class BottomNavigationBarDemo extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      // TODO: implement createState
      return _BottomNavigationBarDemoState();
    }
}

class _BottomNavigationBarDemoState extends State<BottomNavigationBarDemo> {
  int _currentIndex = 0;
  var _controller = PageController(initialPage: 0);

  void _onTapHandler (int index) {
    setState(() {
      _currentIndex = index;
      _controller.jumpToPage(index);
    });
  }
  
  @override
    Widget build(BuildContext context) {
    return Scaffold(
      body: WillPopScope(
        child: PageView(
            physics: NeverScrollableScrollPhysics(),
            controller: _controller,
            children: <Widget>[
              Home(),
              MaterialComponents(),
              AllListDemoPage(),
            ]),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_input_component),
            title: Text('components'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('demo'),
          ),
        ],
      ),
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get_x_sample/app/modules/home/views/home_view.dart';
import 'package:get_x_sample/app/modules/repo/view.dart';
import 'package:get_x_sample/app/routes/app_pages.dart';

class CustomTabbar extends StatefulWidget {
  CustomTabbar({Key? key}) : super(key: key);

  @override
  _CustomTabbarState createState() => _CustomTabbarState();
}

class _CustomTabbarState extends State<CustomTabbar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    RepoPage(),
  ];
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Text("Tabbar"),
        // ),
        body: Center(
          child: _widgetOptions[_selectedIndex],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Weather"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "Repo"),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTap,
        ),
      ),
    );
  }
}

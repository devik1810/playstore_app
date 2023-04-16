import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:playstore_app/screen/view/home.dart';
import 'package:playstore_app/screen/view/second.dart';


class TabbarView extends StatefulWidget {
  const TabbarView({Key? key}) : super(key: key);

  @override
  State<TabbarView> createState() => _TabbarViewState();
}

class _TabbarViewState extends State<TabbarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Icon(Icons.menu,color: Colors.black,),
            title: Text("Games Music & Network app",style: TextStyle(color: Colors.black),),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(25),
              child: TabBar(
                indicatorColor: Colors.green.shade900,
                labelColor: Colors.black,
                tabs: [
                  Tab(text: "For you",),
                  Tab(text: "Top charts",),
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              HomeScreen(),
              SecondScreen(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.keyboard_alt_outlined),label: "Games"),
              BottomNavigationBarItem(icon: Icon(Icons.apps_outlined),label: "Apps"),
            ],
            selectedItemColor: Colors.green.shade900,
            unselectedItemColor: Colors.black,
          ),
        ),),
    );
  }
}
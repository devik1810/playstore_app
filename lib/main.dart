import 'package:flutter/material.dart';
import 'package:playstore_app/screen/provider/home_provider.dart';
import 'package:playstore_app/screen/view/home.dart';
import 'package:playstore_app/screen/view/second.dart';
import 'package:playstore_app/screen/view/tabbar.dart';
import 'package:playstore_app/screen/view/third.dart';
import 'package:provider/provider.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PlayStoreProvider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: 'detail',
        routes: {
          '/':(context) => TabbarView(),
          'top':(context) => SecondScreen(),
          'detail':(context) => ThirdScreen(),
          'for':(context) => HomeScreen(),
        },
      ),
    ),
  );
}
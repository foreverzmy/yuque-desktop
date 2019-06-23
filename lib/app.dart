import 'package:flutter/material.dart';
import 'package:yuque/views/home.page.dart';
import 'package:yuque/views/splash.page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '语雀',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'Roboto',
        backgroundColor: Colors.white,
      ),
      home: SplashPage(),
      routes: {'/home': (context) => HomePage()},
    );
  }
}

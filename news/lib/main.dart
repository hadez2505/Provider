import 'package:flutter/material.dart';
import 'package:news/pages/pages.dart';
import 'package:news/theme/personal_theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: MyTheme,
      debugShowCheckedModeBanner: false,
      home: const TabsPage()
    );
  }
}
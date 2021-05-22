import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/page/my_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: MyHomePage(),
      
    );
  }
}

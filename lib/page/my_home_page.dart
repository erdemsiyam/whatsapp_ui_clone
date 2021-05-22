import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/screen/chat_screen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  TabController tabController;
  IconData fabIcon = Icons.message;
  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: 4, initialIndex: 1);
    tabController.addListener(() {
      setState(() {
        switch (tabController.index) {
          case 0:
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_enhance;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: TabBarView(
        controller: tabController,
        children: [
          Icon(Icons.camera_alt), // kamera ekranı
          ChartScreen(),
          Text('Status Screen'),
          Text('Calls Screen'),
        ],
      ),
      floatingActionButton: getFAB(),
    );
  }

  AppBar getAppBar() => AppBar(
        backgroundColor: Color.fromARGB(255, 7, 94, 84),
        title: Text(
          'Whatsapp',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: [
            Tab(icon: Icon(Icons.camera_alt)),
            Tab(child: Text("CHATS")),
            Tab(child: Text("STATUS")),
            Tab(child: Text("CALLS")),
          ],
          indicatorColor: Colors.white,
        ),
      );

  FloatingActionButton getFAB() => FloatingActionButton(
        onPressed: () {},
        child: Icon(fabIcon),
        backgroundColor: Color.fromARGB(255, 37, 211, 102),
      );
}

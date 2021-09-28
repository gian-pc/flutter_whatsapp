import 'package:flutter/material.dart';
import 'package:flutter_codigo3_whatsapp/pages/calls_page.dart';
import 'package:flutter_codigo3_whatsapp/pages/camera_page.dart';
import 'package:flutter_codigo3_whatsapp/pages/chat_page.dart';
import 'package:flutter_codigo3_whatsapp/pages/status_page.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _tabController = TabController(length: 4,vsync: this,initialIndex: 1);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        bottom: TabBar(
          indicatorColor: Colors.white,
          controller: _tabController,
          indicatorWeight: 3.2,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text("CHATS", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Tab(
              child: Text("STATUS", style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            Tab(
              child: Text("CALLS", style: TextStyle(fontWeight: FontWeight.bold),),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.message,
          color: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallsPage(),
        ],
      ),
    );
  }
}

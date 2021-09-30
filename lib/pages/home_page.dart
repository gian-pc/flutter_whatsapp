import 'package:flutter/material.dart';
import 'package:flutter_codigo3_whatsapp/pages/calls_page.dart';
import 'package:flutter_codigo3_whatsapp/pages/camera_page.dart';
import 'package:flutter_codigo3_whatsapp/pages/chat_page.dart';
import 'package:flutter_codigo3_whatsapp/pages/status_page.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late Widget floatingWidget = Icon(Icons.message,color: Colors.white);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(() {
      switch(_tabController.index){
        case 1:
          floatingWidget=Icon(Icons.message,color: Colors.white);
          break;
        case 2:
          floatingWidget=Icon(Icons.camera_alt,color: Colors.white);
          break;
        case 3:
          floatingWidget=Icon(Icons.add_ic_call_sharp,color: Colors.white);
          break;
      }
      setState(() {

      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          PopupMenuButton(
            child: Icon(Icons.more_vert),
            itemBuilder: (context){
              return[
                PopupMenuItem(child: Text("Nuevo grupo",),value: 1,),
                PopupMenuItem(child: Text("Nueva difusión",),value: 2,),
                PopupMenuItem(child: Text("Dispositivos vinculados",),value: 3,),
                PopupMenuItem(child: Text("Mensajes destacados",),value: 4,),
                PopupMenuItem(child: Text("Ajustes",),value: 5,),

              ];
            },
            onSelected: (int value){
              print(value);
            },
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorWeight: 3.2,
          tabs: [
            Tab(
              icon: Icon(Icons.camera_alt),
            ),
            Tab(
              child: Text(
                "CHATS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "STATUS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Tab(
              child: Text(
                "CALLS",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: floatingWidget
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          CameraPage(),
          ChatPage(),
          StatusPage(),
          CallsPage()
        ],
      ),
    );
  }
}

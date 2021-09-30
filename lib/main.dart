
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_whatsapp/pages/home_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xff085E56),
        accentColor: Color(0xff00CD42)
      ),
      home: HomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
    length: 4,
    child: Scaffold(
      appBar: AppBar(
        title: Text('Homepagina'),
        bottom: TabBar(
          tabs:[
            Tab(text: 'Startpagina'),
            Tab(text: 'Moldavië'),
            Tab(text: 'Tanzania'),
            Tab(text: 'Roemenië'),
          ],
        ),
      ),
      body: TabBarView(
        children: [
          Center(child: Text('Welkom op de Livingstone Infoapp!', style: TextStyle(fontWeight: FontWeight.bold))),
          Center(child: Text('page 1: Moldavie')),
          Center(child: Text('page 2: Tanzania')),
          Center(child: Text('page 3: roemenië')),
        ],
      )
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:engenhar_frontend/pages/mapPage.dart';
import 'package:engenhar_frontend/pages/infoPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'msc',
      home: new DefaultTabController(
        length: 2,
        child: new Scaffold(
          appBar: new AppBar(
            flexibleSpace: new Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                new TabBar(
                  tabs: [
                    new Tab(text: 'Mapa'),
                    new Tab(text: 'Informações'),
                  ],
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              MapPage(),
              InfoPage()
            ],
          ),
        ),
      ),
    );
  }
}

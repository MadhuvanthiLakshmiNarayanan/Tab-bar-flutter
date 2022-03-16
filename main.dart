import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.blue[900],
              bottom: TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.directions_bus)),
                  Tab(icon: Icon(Icons.directions_car)),
                ],
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.red,
                    Colors.orange,
                  ]),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              title: Text('tabs demo'),
            ),
            body: TabBarView(children: [
              Icon(Icons.directions_bus),
              Icon(Icons.directions_car),
            ])));
  }
}

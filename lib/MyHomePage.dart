import 'package:flutter/material.dart';

import 'DetailScreen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title, this.items}) : super(key: key);

  final String title;
  final List<String> items;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text('${widget.items[index]}'),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            DetailScreen(item: widget.items[index])));
              },
            );
          }),
    );
  }
}

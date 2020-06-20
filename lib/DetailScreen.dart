import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen({Key key, this.item}) : super(key: key);

  final String item;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Center(
        child: Text(widget.item),
      ),
    );
  }
}

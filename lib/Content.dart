import 'dart:math';

import 'package:flutter/material.dart';

class Content extends StatefulWidget {
  @override
  createState() => ContentState();
}

class ContentState extends State<Content> {
  Color _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: _color,
        height: double.maxFinite,
        width: double.maxFinite,
        child: OutlineButton(
            onPressed: _onContentPressed,
            textColor: Colors.white,
            child: Center(
                child: Text(
              'Hey there',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ))));
  }

  void _onContentPressed() {
    setState(() {
      _color = Color.fromARGB(255, Random().nextInt(255), Random().nextInt(255),
          Random().nextInt(255));
    });
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_app/Content.dart';

main() => runApp(SolidApp());

class SolidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Solid App',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Solid App'),
          actions: <Widget>[
            PopupMenuButton(itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: MaterialButton(
                      onPressed: () {
                        _showCreds(context);
                      },
                      child: Text("Credits")),
                )
              ];
            })
          ],
        ),
        body: Content(),
      ),
    );
  }

  _showCreds(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("Credits"),
            content: Text("Images by Freepik \n" +
                "https://www.flaticon.com/authors/freepik"),
            actions: <Widget>[],
          );
        });
  }
}

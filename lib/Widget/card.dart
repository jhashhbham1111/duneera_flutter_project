import 'package:flutter/material.dart';
class Card extends StatelessWidget {
  const Card({Key? key, required RoundedRectangleBorder shape, required MaterialColor color, required int elevation, required Column child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        width: 100,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            color: Colors.red,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 60),
                  title: Text(
                      'Sonu Nigam',
                      style: TextStyle(fontSize: 30.0)
                )
                )
              ],
            )
        )
    );
  }
}

import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';
class AlternateDay extends StatefulWidget {
  const AlternateDay({Key? key}) : super(key: key);

  @override
  _AlternateDayState createState() => _AlternateDayState();
}

class _AlternateDayState extends State<AlternateDay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        actions: [
          Container(
            margin: EdgeInsets.only( right: 20),
            width:150,
            height: 50,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlueAccent),
              borderRadius: BorderRadius.circular(10),
              color: Colors.blue,
            ),
            child: const Text(
              'CUSTOM',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child:
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: ListTile(
                  leading: const Image(
                    image: NetworkImage(
                        "https://cdn.vectorstock.com/i/1000x1000/51/99/icon-of-user-avatar-for-web-site-or-mobile-app-vector-3125199.webp"),
                  ),
                  title: const Text(
                    "BRITANNIA Cake-Fruity",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  subtitle: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 210),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Text(
                              '130g',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '\u{20B9}${27.00}',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis aliquet dui, eu varius augue elementum sit amet. Sed dolor enim,',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              Container(

                margin:EdgeInsets.only(left: 50,top:50),
                child: const Text(
                  "Selected days",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 27),
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rectBorderWidget,
                  rectBorderWidget,
                  rectBorderWidget,
                  rectBorderWidget,

                ],
              )

            ],


          )
        ],
      ),
    );

  }
  Widget get rectBorderWidget {
    return Container(
      margin: EdgeInsets.only(top: 50,left: 50),
      child: DottedBorder(
        dashPattern: [8, 4],
        strokeWidth: 1,
        child: Row(
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                "SU",
                style: TextStyle(
                    color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
              ),
              height: 40,
              width: 40,
              color: Colors.white,
            ),


          ],
        ),
      ),
    );
  }
}

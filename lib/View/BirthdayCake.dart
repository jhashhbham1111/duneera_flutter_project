import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BirthdayCake extends StatefulWidget {
  const BirthdayCake({Key? key}) : super(key: key);

  @override
  _BirthdayCakeState createState() => _BirthdayCakeState();
}

class _BirthdayCakeState extends State<BirthdayCake> {
  final _controller =  PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back,color: Colors.black,),
        title: const Text(
          "BRITANNIA CAKE-fruity",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body:ListView(
        children: [
          Container(
            child:Column(
              children: [
                Container(
                  alignment:Alignment.center,
                  child: Icon(Icons.album,size: 100,),
                )
              ],
            )
          ),
          Container(
            child: SizedBox(
              height: 500,
              child: PageView(
                  controller :  _controller,
                 children: [

                 ],
              ),

            )

          )
        ],
      )

    );
  }
}

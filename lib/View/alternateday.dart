import 'package:duneera_flutter_project/Widget/item_card.dart';
import 'package:duneera_flutter_project/Widget/week_day_box.dart';
import 'package:flutter/material.dart';

class AlternateDay extends StatefulWidget {
  const AlternateDay({Key? key}) : super(key: key);

  @override
  _AlternateDayState createState() => _AlternateDayState();
}

class _AlternateDayState extends State<AlternateDay> {
  List<String> days = ["SU", "MO", "TU", "WE", "TH", "FR", "SA"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 12.0,
              vertical: 8,
            ),
            child: MaterialButton(
              elevation: 0,
              onPressed: () {
                //on press of custom button
              },
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: const Color(0xff1e45aa),
              child: const Text('Custom',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
            ),
          )
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: ListView(
              children: [
                const ItemCard(
                  image: "cake",
                  description:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis aliquet dui, eu varius augue elementum sit amet. Sed dolor enim,",
                  title: "BRITANIA Cake-Fruity",
                  weight: "130g",
                  price: "27.00",
                )
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xffe8f3f9),
              margin: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 10,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 20,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Selected days",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Wrap(
                    children: [
                      for (String day in days)
                        WeekDayBox(
                          day,
                        ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

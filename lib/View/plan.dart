import 'package:duneera_flutter_project/View/Product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class Plan extends StatefulWidget {
  const Plan({Key? key}) : super(key: key);

  @override
  _PlanState createState() => _PlanState();
}

class _PlanState extends State<Plan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Product()),
            );
          },
          child: const Icon(
            Icons.arrow_back,
            size: 40,
          ),
        ),
        title: const Text(
          'Plan',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              roundedRectBorderWidget,
              const SizedBox(
                height: 30,
              ),
              smallRoundedRectBorderWidget,
              const SizedBox(
                height: 20,
              ),
              smallRoundedRectBorderWidget,
              Container(
                margin: EdgeInsets.only(top: 20),
                child: const Text(
                  "FAQ | T & C",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 5,
              ),
              smallRoundedRectBorderWidget,
            ],
          )
        ],
      ),
    );
  }

  Widget get roundedRectBorderWidget {
    return DottedBorder(
      borderType: BorderType.RRect,
      padding: EdgeInsets.zero,
      radius: Radius.circular(14),
      dashPattern: [10, 5],
      color: Colors.grey,
      strokeWidth: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 8,
                width: MediaQuery.of(context).size.width / 1,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Trial Plan-10% off in all products',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
            ],
          ),
          containerRoundedRectBorderWidget,
          const Text(
            "Basic Plan",
            style: TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 22),
          )
        ],
      ),
    );
  }

  Widget get smallRoundedRectBorderWidget {
    return DottedBorder(
      borderType: BorderType.RRect,
      padding: EdgeInsets.zero,
      radius: Radius.circular(14),
      dashPattern: [10, 5],
      color: Colors.grey,
      strokeWidth: 2,
      child: Container(
          height: MediaQuery.of(context).size.height / 12,
          width: MediaQuery.of(context).size.width / 1.1,
          decoration: BoxDecoration(
              color: Colors.blue,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10)),
          child: const Center(
            child: Text(
              '20% off on MRP on all Products',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )),
    );
  }

  Widget get containerRoundedRectBorderWidget {
    return DottedBorder(
      borderType: BorderType.RRect,
      padding: EdgeInsets.zero,
      radius: Radius.circular(14),
      dashPattern: [10, 5],
      color: Colors.grey,
      strokeWidth: 2,
      child: Container(

        height: MediaQuery.of(context).size.height / 14,
        width: MediaQuery.of(context).size.width / 1.1,
        decoration: BoxDecoration(
            color: Colors.blue,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10)),
        child: Row(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Cost',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  '\u{20B9}${70}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Max Discount',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  '\u{20B9}${250}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  'Validity',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
                Text(
                  '\u{20B9}${30}',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

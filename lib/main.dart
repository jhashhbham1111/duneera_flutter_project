import 'package:flutter/material.dart';

import 'View/Orders.dart';
import 'View/Product.dart';
import 'View/Registration.dart';
import 'View/alternateday.dart';
import 'View/bakery-&-dairy.dart';
import 'View/deliveryaddress.dart';
import 'View/editprofile.dart';
import 'View/plan.dart';
import 'View/profile.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const DeliveryAddress(),

    );
  }
}
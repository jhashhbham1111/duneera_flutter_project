import 'package:flutter/material.dart';

class DeliveryAddress extends StatefulWidget {
  const DeliveryAddress({Key? key}) : super(key: key);

  @override
  _DeliveryAddressState createState() => _DeliveryAddressState();
}

class _DeliveryAddressState extends State<DeliveryAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Address",
          style: TextStyle(
              color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 25),
              child: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              )),
        ],
      ),
      body: ListView(
        children: [
          Image.network(
              "https://cdn.vectorstock.com/i/1000x1000/51/99/icon-of-user-avatar-for-web-site-or-mobile-app-vector-3125199.webp"),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(15.0),
                child: Text(
                  'Delivery Location',
                  style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                      fontSize: 24),
                ),

              ),
              const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text(
                  'Adjust pin to set the delivery Options',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.normal,
                      fontSize: 22),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left:10,right: 10,top: 20),
                child: TextFormField(
                keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: " Name",
                    hintStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.normal),
                    contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(color: Colors.grey, width: 4),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                    ),
                  ),
                )

              ),
              Container(
                  margin: EdgeInsets.only(left:10,right: 10,top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: "Flat No/House no/Building ",
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.grey, width: 4),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                  )

              ),
              Container(
                  margin: EdgeInsets.only(left:10,right: 10,top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: " Name",
                      suffix: Text("Change",style:TextStyle(color: Colors.blue,fontSize: 16,fontWeight:FontWeight.normal),),
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.grey, width: 4),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                  )

              ),
              Container(
                  margin: EdgeInsets.only(left:10,right: 10,top: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      hintText: " Name",
                      suffix: Text("Change",style:TextStyle(color: Colors.blue,fontSize: 16,fontWeight:FontWeight.normal),),
                      hintStyle: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      contentPadding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(color: Colors.grey, width: 4),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: const BorderSide(color: Colors.grey, width: 1.5),
                      ),
                    ),
                  )

              ),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:duneera_flutter_project/View/profile.dart';
import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  int _currentIndex =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions:  [
          Container(
            margin: const EdgeInsets.only(right: 25),
              child: const Icon(Icons.search,color: Colors.grey,size: 30,)),
          Container(
            margin: const EdgeInsets.only(right: 20),
              child: const Icon(Icons.assignment_turned_in,color: Colors.grey,size: 30,)),
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Profile()),
            );
          },
            child: const Icon(Icons.arrow_back, color: Colors.black)),
        title: const Text(
          "Product",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),

        ),
      ),
      body: Center(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisSpacing: 10, crossAxisSpacing: 10),
            children: [
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text(
                      "Country Special",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "4 items",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text(
                      "Milk",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "4 items",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text(
                      "Milk Product",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "4 items",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text(
                      "Bread",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "4 items",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text(
                      "Eggs",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "3 items",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
              Container(

                decoration: BoxDecoration(
                    border: Border.all(color: Colors.lightBlue, width: 1.5),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: const [
                    Icon(
                      Icons.home,
                      size: 50,
                      color: Colors.black,
                    ),
                    Text(
                      "Adds-on",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                      "1 items",
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontWeight: FontWeight.normal),
                    )
                  ],
                ),
              ),
            ],
          ),

        )),

      ),
      bottomNavigationBar:
      BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor:Colors.grey,
        unselectedItemColor: Colors.white70,
        iconSize: 30,
        currentIndex: _currentIndex,
        onTap: (index) =>setState(() {
          _currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black,),
              label:"Home",
            ),
          BottomNavigationBarItem(icon:Icon(Icons.announcement,color: Colors.black,),
              label:"Product",
             ),
          BottomNavigationBarItem(icon:Icon(Icons.home,color: Colors.black,),
              label:"Plan",
             ),
          BottomNavigationBarItem(icon:Icon(Icons.assignment_turned_in_rounded,color: Colors.black,),
              label:"Order",
             ),
          BottomNavigationBarItem(icon:Icon(Icons.settings_applications
            ,color:Colors.black,),
              label:"Profile"
              ,
          ),

        ],

      ),
    );
  }
}

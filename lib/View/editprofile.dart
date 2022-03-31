import 'package:duneera_flutter_project/View/Orders.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Editprofile extends StatefulWidget {
  const Editprofile({Key? key}) : super(key: key);

  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  int _isSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
           elevation: 0,
        leading:GestureDetector(
          onTap: (){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Order()),
            );
          },
            child: Icon(Icons.arrow_back,color: Colors.black,)),
          title: const Text("Edit Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20))),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(top:20,left: 10),
            alignment: Alignment.centerLeft,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
              radius:40,
              backgroundImage:NetworkImage
                ("https://cdn.vectorstock.com/i/1000x1000/51/99/icon-of-user-avatar-for-web-site-or-mobile-app-vector-3125199.webp"),
            ),
          ) ,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 140,
                margin: EdgeInsets.only(left: 15,top:20),
                child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Your name",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    )),
              ),
              Expanded(child: SizedBox(width: 10,)),
              Container(
                width: 140,
                margin: EdgeInsets.only(right: 15,top:20),
                child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Singh",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.normal),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    )),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 15,top:20),
            child: TextFormField(
                decoration: const InputDecoration(
              hintText: "Enter your emial",
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            )),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,top:20),
            child: TextFormField(
                decoration: const InputDecoration(
              hintText: "Birthday",
              suffixIcon: Icon(Icons.calendar_today_outlined),
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            )),
          ),
           RadioListTile(value: 0, groupValue:_isSelected, onChanged: ( value){
             setState(() {
               _isSelected = value as int;
             });
           },
             title: const Text("Male"),),
           RadioListTile(value: 1, groupValue:_isSelected, onChanged: ( value){
             setState(() {
               _isSelected = value as int;
             });

           },
             title: const Text("Female"),),



          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.only(left: 15),
            child: const Text(
              'Mobile',
              style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 15,top:20),
            child: TextFormField(
                decoration: const InputDecoration(
              hintText: "Enter Your mobile numbers",
              hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.normal),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
            )),
          ),
          SizedBox(height:MediaQuery.of(context).size.height/4.5 ,),
          Container(
            height: 50,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15),
               ),
              child: const Center(
            child: Text(
              'Update Profile',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),

          ))
        ],
      ),
    );
  }
}

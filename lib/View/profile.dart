import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:dotted_border/dotted_border.dart';



class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      body:ListView(
        children: [
          Container(
            color: Colors.blue,
            height: MediaQuery.of(context).size.height *0.4,
            width: double.infinity,
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                const CircleAvatar(
                  child:  CircleAvatar(
                    radius:48,
                      child:  CircleAvatar(
                        radius:46,
                        backgroundImage:NetworkImage("https://cdn.vectorstock.com/i/1000x1000/51/99/icon-of-user-avatar-for-web-site-or-mobile-app-vector-3125199.webp"),
                      ) ,
                     backgroundColor: Colors.blue,
                  ),
                  backgroundColor: Colors.white,
                radius:50,

              ),
                Container(
                  alignment: Alignment.center,
                    margin: const EdgeInsets.only(top: 25),
                    child: const Text(
                      'ROY',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                Container(
                  alignment: Alignment.center,
                    margin: EdgeInsets.only(top: 20),
                    child: const Text(
                      '9876543123',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )),
                Container(
                  alignment: AlignmentDirectional.center,
                  child: rectBorderWidget,
                )
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 2,
            width: double.infinity,
            child: ListView(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("My Order",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("Dunnera Wallet",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("Dunnera membership",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("Saved Address",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("Help & Support",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("Terms and Conditions",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
                Padding(
                  padding: const EdgeInsets.only(top:15,bottom: 15),
                  child: Row(
                    children: [
                      Container(
                        margin:const EdgeInsets.only(left:10),
                        child: const Icon(Icons.account_balance_wallet),
                      ),
                      Container(
                        margin:const EdgeInsets.only(left:20),
                        child: const Text("Sign Out",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ),
                    ],
                  ),
                ),
                buildDashedLine(),
              ],
            ),
          ),
        ],

      )
    );
  }

  Widget buildDashedLine() => const Center(
        child: DottedLine(
          dashColor: Colors.black,
          lineThickness: 2,
          dashLength: 5,
          dashGapLength: 10,
        ),
      );
  Widget get rectBorderWidget {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: DottedBorder(
        dashPattern: [8, 4],
        strokeWidth: 1,
        child: Container(
          alignment: Alignment.center,
          child: const Text(
            "EDIT",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
          height: 40,
          width: 100,
          color: Colors.blue,
        ),
      ),
    );
  }
}

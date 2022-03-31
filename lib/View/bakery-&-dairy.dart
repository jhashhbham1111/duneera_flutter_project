import 'package:flutter/material.dart';

class BakeryAndDiary extends StatefulWidget {
  const BakeryAndDiary({Key? key}) : super(key: key);

  @override
  _BakeryAndDiaryState createState() => _BakeryAndDiaryState();
}

class _BakeryAndDiaryState extends State<BakeryAndDiary> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        title: const Text(
          "Bakery & Diary",
          style: TextStyle(
              color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
              margin: const EdgeInsets.only(right: 25),
              child: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 30,
              )),
          Container(
              margin: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.assignment_turned_in,
                color: Colors.grey,
                size: 30,
              )),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20, left: 8),
                      width: 120,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.blue,
                      ),
                      child: const Text(
                        'All',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                    const DiaryProduct(),
                 /*   const DiaryProduct(),
                    const DiaryProduct(),*/



                  ],
                ),
              /*  const BakeryDiaryCard(),
                const BakeryDiaryCard(),
                const BakeryDiaryCard(),
                const BakeryDiaryCard(),
                const BakeryDiaryCard(),*/

              ],
            ),
          ),

        ],
      ),
    );
  }
}

class DiaryProduct extends StatelessWidget {
  const DiaryProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.only(top: 20, left: 20),
        width: 120,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: const Text(
          'Diary Product',
          style: TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
      ),
    );
  }
}

class BakeryDiaryCard extends StatelessWidget {
  final String title;


  BakeryDiaryCard({required this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 6,
        width: MediaQuery.of(context).size.width/1,
        child: Column(
          children: [
            ListTile(
              leading: const Image(
                image: NetworkImage(
                    "https://cdn.vectorstock.com/i/1000x1000/51/99/icon-of-user-avatar-for-web-site-or-mobile-app-vector-3125199.webp"),
              ),
              title:  Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top:40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top:25),
                      child:
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "130g",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18),
                            ),
                            const Text(
                              '\u{20B9}${70}',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Container(
                              margin: EdgeInsets.only( left: 8),
                              width:100,
                              height: 40,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.lightBlueAccent),
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.white,
                              ),
                              child: const Text(
                                'ADD',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                            ),

                          ],
                        ),


                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

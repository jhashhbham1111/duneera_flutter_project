import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String description;
  final String price;
  final String weight;

  const ItemCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.price,
      required this.weight})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset(
          'assets/$image.jpg',
          height: 120,
          width: 90,
          fit: BoxFit.contain,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    weight,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const CircleAvatar(
                    child: Text("₹"),
                    radius: 10,
                    backgroundColor: Color(0xff1e45aa),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(price,
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff1e45aa))),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .7,
                // height: 200,
                child: Text(
                  description,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  maxLines: 2,
                  // overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

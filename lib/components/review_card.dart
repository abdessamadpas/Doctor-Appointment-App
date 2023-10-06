import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ReviewCard extends StatefulWidget {
  const ReviewCard({super.key});

  @override
  State<ReviewCard> createState() => _ReviewCardState();
}

class _ReviewCardState extends State<ReviewCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      margin: EdgeInsets.only(right: 20),
      padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 255, 255, 255),
          // gradient: const LinearGradient(
          //   begin: Alignment.centerLeft,
          //   end: Alignment.centerRight,
          //   colors: [
          //     Color.fromARGB(206, 64, 187, 154),
          //     Color(0xFFE6F3EA),
          //   ],
          // ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: []),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundColor:
                      Color.fromARGB(0, 72, 196, 99).withOpacity(0.2),
                  backgroundImage: Image.asset('assets/images/doctor1.png')
                      .image, // no matter how big it is, it won't overflow
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Zakaria Elhajri",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "1 day ago",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey.withOpacity(0.8)),
                    )
                  ],
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 172, 48).withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    children: [
                      Icon(
                        Iconsax.star1,
                        color: Color(0xFFFFAD1B),
                        size: 24.0,
                      ),
                      Text("5.0")
                    ],
                  ),
                ),
              ],
            ),
            // comment of the review
            Text(
              "Many thanks to the doctor Stelle Kane for his help.",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
            ),
          ]),
    );
  }
}

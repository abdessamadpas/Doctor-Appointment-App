import 'package:doctorappointment/components/review_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconsax/iconsax.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:doctorappointment/components/custom_icon.dart';

class DoctorDetails extends StatefulWidget {
  const DoctorDetails({super.key});

  @override
  State<DoctorDetails> createState() => _DoctorDetailsState();
}

class _DoctorDetailsState extends State<DoctorDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
          height: Config.screenHeight,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF509D89),
              Color(0xFFE6F3EA),
            ],
          )),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        icon: Icon(
                          Iconsax.arrow_left_2,
                          color: Colors.white,
                          size: 25,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                    const Spacer(),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 50.0,
                          backgroundColor:
                              Color.fromARGB(0, 255, 255, 255).withOpacity(0.2),
                          child: Image.asset(
                            'assets/images/doctor2.png',
                            fit: BoxFit.contain,
                            width: 190.0,
                            height: 90.0,
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        const Text(
                          'Dr. Stella Kane',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 22.0,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Heart Surgeon',
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16.0,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color.fromARGB(0, 255, 255, 255)
                                  .withOpacity(0.2),
                              child: const Icon(
                                Iconsax.call,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 25.0,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            CircleAvatar(
                              radius: 30,
                              backgroundColor: Color.fromARGB(0, 255, 255, 255)
                                  .withOpacity(0.2),
                              child: const Icon(
                                Iconsax.message,
                                color: Color.fromARGB(255, 255, 255, 255),
                                size: 25.0,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Transform.rotate(
                      angle: 90 *
                          (3.1415926535897932 / 180), // 90 degrees in radians
                      child: IconButton(
                          icon: Icon(
                            Iconsax.more,
                            color: Colors.white,
                            size: 25,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          }),
                    )
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(215, 245, 245, 245),
                      borderRadius: BorderRadius.circular(30.0)),
                  // width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'About Doctor',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Dr. Stella is the top most heart surgeon in Flower Hospitals. She has done over 100  sugeries.',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.8),
                              fontSize: 17.0,
                              fontWeight: FontWeight.normal),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text('Reviews',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              width: 10.0,
                            ),
                            const Icon(
                              Iconsax.star1,
                              color: Color(0xFFFFAD1B),
                              size: 24.0,
                            ),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text('4.8',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.8),
                                    fontSize: 22.0,
                                    fontWeight: FontWeight.normal)),
                            const SizedBox(
                              width: 5.0,
                            ),
                            Text('(123)',
                                style: TextStyle(
                                    color: Colors.black.withOpacity(0.4),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal)),
                            Spacer(),
                            Text('See all',
                                style: TextStyle(
                                    color: Config.primatyColor,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.normal)),
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // ! reviews list
                        SizedBox(
                            height: Config.heightSize * 0.16,
                            width: Config.widthSize * 1,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children:
                                  List.generate(5, (index) => ReviewCard()),
                            )),
                        Config.spaceSmall,
                        Text(
                          'Location',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: Color.fromARGB(0, 67, 170, 129)
                                  .withOpacity(0.2),
                              child: const Icon(
                                Iconsax.location4,
                                color: Color.fromARGB(255, 0, 0, 0),
                                size: 25.0,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Lotus Medical Center',
                                    style: TextStyle(
                                        color: Colors.black.withOpacity(0.8),
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.normal)),
                                Text('160 Avenue de FES, Tanger, Morocco',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 138, 138, 138)
                                                .withOpacity(0.8),
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.normal)),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  )),
            ],
          )),
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            color: Color.fromARGB(255, 255, 255, 255),
            height: 120, // Adjust the height as needed
            child: Column(
              children: [
                Row(
                  children: const [
                    Text('Consummation price',
                        style: TextStyle(
                            color: Color.fromARGB(255, 170, 170, 170),
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal)),
                    Spacer(),
                    Text('\$ 30',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // button
                const CustomIcon(
                    text: "Book Appointment",
                    colorBtn: Color.fromARGB(255, 96, 189, 164),
                    colorTxt: Colors.white,
                    route: 'booking_page')
              ],
            )),
      )
    ])));
  }
}

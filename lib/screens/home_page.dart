import 'package:doctorappointment/components/doctor_card.dart';
import 'package:doctorappointment/custom/setting_icons.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import '../custom/arrow_up_icons.dart';
import '../custom/setting_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> medCat = [
    {'icon': "assets/images/dmagh.png", "category": "General"},
    {"icon": "assets/images/fam.png", "category": "gynecology"},
    {"icon": "assets/images/heart.png", "category": "cardiology"},
    {"icon": "assets/images/ma3ida.png", "category": "respirations"},
    {"icon": "assets/images/riya.png", "category": "dermatology"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFFE6F3EA),
                    Color(0xFF509D89),
                  ],
                )),
                child: SingleChildScrollView(
                  child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ! header
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ClipRect(
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                          sigmaX: 0.0, sigmaY: 0.0),
                                      child: Container(
                                        // padding: const EdgeInsets.all(15),
                                        width: 50.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            color: Color.fromARGB(
                                                255, 239, 248, 247)),
                                        child: Center(
                                            child: Transform.scale(
                                                scale: 1.5,
                                                child: Container(
                                                  child: const Icon(
                                                    Icons.search_sharp,
                                                    color: Color.fromARGB(
                                                        255, 0, 0, 0),
                                                    size: 22,
                                                  ),
                                                ))),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        'Set Location',
                                        style: TextStyle(
                                            fontFamily: 'HankenGrotesk',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),

                                        // al(
                                        //     fontSize: 18, fontWeight: FontWeight.w600),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("Where you needg your doctor",
                                          style: TextStyle(
                                              fontSize: 13,
                                              fontWeight: FontWeight.normal,
                                              color: Color.fromARGB(
                                                  255, 161, 161, 161))),
                                    ],
                                  )
                                ],
                              ),
                              const SizedBox(
                                  child: Icon(
                                Iconsax.notification,
                                size: 25,
                              ))
                            ],
                          ),
                          Config.spaceSmall,
                          //! categories label
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Categories",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "See all",
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.grey.shade500),
                              ),
                            ],
                          ),
                          // Config.spaceSmall,
                          const SizedBox(
                            height: 10,
                          ),
                          // ! categories list
                          SizedBox(
                              height: Config.heightSize * 0.14,
                              width: Config.widthSize * 0.9,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(
                                  medCat.length,
                                  (index) => Container(
                                    margin: EdgeInsets.only(right: 15),
                                    child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.teal.shade50,
                                              ),
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 20,
                                                      vertical: 10),
                                              child: Image.asset(
                                                medCat[index]['icon'],
                                                fit: BoxFit.fill,
                                                scale: 2,
                                                width: 70,
                                                height: 70,
                                              )),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(medCat[index]['category'],
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 16,
                                                  fontWeight:
                                                      FontWeight.normal)),
                                        ]),
                                  ),
                                ),
                              )),
                          Config.spaceSmall,

                          //!top rated
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text(
                                      'Top rated',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    SizedBox(
                                        child: Icon(
                                      ArrowUp.arrow_up,
                                      size: 18,
                                    ))
                                  ]),
                              const SizedBox(
                                  child: Icon(
                                Setting.params,
                                size: 20,
                              ))
                            ],
                          )
                          //! cards doctors
                          ,
                          // Config.spaceSmall,
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            // width: Config.widthSize * 0.9,
                            children: List.generate(
                                5,
                                (index) => DoctorCard(
                                      route: 'doctorDetails',
                                    )),
                          ),
                        ],
                      )),
                ))));
  }
}

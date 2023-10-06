import 'package:doctorappointment/components/custom_icon.dart';
import 'package:doctorappointment/custom/clock_icons.dart';
import 'package:doctorappointment/custom/dot_icons.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:flutter/material.dart';
import '../custom/calender_icons.dart';
import 'package:iconsax/iconsax.dart';

class AppoinementPage extends StatefulWidget {
  const AppoinementPage({super.key});

  @override
  State<AppoinementPage> createState() => _AppoinementPageState();
}

enum FilterStatus { Upcoming, Complete, Cancel }

class _AppoinementPageState extends State<AppoinementPage> {
  FilterStatus filterStatus = FilterStatus.Upcoming;
  Alignment _alignment = Alignment.centerLeft;
  List<dynamic> shedules = [
    {
      "doctor_name": "Dr. John Doe",
      "doctor_profile": "assets/images/doctor1.png",
      "category": "Cardiologist",
      "status": FilterStatus.Upcoming.toString().split(".")[1],
    },
    {
      "doctor_name": "Dr. Aisha Doe",
      "doctor_profile": "assets/images/doctor2.png",
      "category": "Cardiologist",
      "status": FilterStatus.Complete.toString().split(".")[1],
    },
    {
      "doctor_name": "Dr. Sam Doe",
      "doctor_profile": "assets/images/doctor3.png",
      "category": "Cardiologist",
      "status": FilterStatus.Cancel.toString().split(".")[1],
    },
    {
      "doctor_name": "Dr. Kofi Doe",
      "doctor_profile": "assets/images/doctor1.png",
      "category": "Cardiologist",
      "status": FilterStatus.Upcoming.toString().split(".")[1],
    },
    {
      "doctor_name": "Dr. Peter Zokli",
      "doctor_profile": "assets/images/doctor2.png",
      "category": "Cardiologist",
      "status": FilterStatus.Complete.toString().split(".")[1],
    },
    {
      "doctor_name": "Dr. Will Smith",
      "doctor_profile": "assets/images/doctor3.png",
      "category": "Cardiologist",
      "status": FilterStatus.Cancel.toString().split(".")[1],
    },
    {
      "doctor_name": "Dr. Zokli Doe",
      "doctor_profile": "assets/images/doctor1.png",
      "category": "Cardiologist",
      "status": FilterStatus.Upcoming.toString().split(".")[1],
    }
  ];
  @override
  Widget build(BuildContext context) {
    List<dynamic> filteredShedules = shedules
        .where((element) =>
            element["status"] == filterStatus.toString().split(".")[1])
        .toList();
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF509D89),
                Color(0xFFE6F3EA),
              ],
            )),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Appointment shedules",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Config.spaceSmall,
                  Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            for (FilterStatus filterstatus
                                in FilterStatus.values)
                              Expanded(
                                child: GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (filterStatus != filterstatus) {
                                        filterStatus = filterstatus;
                                        _alignment = filterstatus ==
                                                FilterStatus.Upcoming
                                            ? Alignment.centerLeft
                                            : filterstatus ==
                                                    FilterStatus.Complete
                                                ? Alignment.center
                                                : Alignment.centerRight;
                                      }
                                    });
                                  },
                                  child: Center(
                                    child: Text(
                                      filterstatus.toString().split(".")[1],
                                    ),
                                  ),
                                ),
                              )
                          ],
                        ),
                      ),
                      AnimatedAlign(
                          alignment: _alignment,
                          duration: const Duration(milliseconds: 200),
                          child: Container(
                            height: 40,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Config.primatyColor,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Text(
                                filterStatus.toString().split(".")[1],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ))
                    ],
                  ),
                  Config.spaceSmall,
                  Expanded(
                      child: ListView.builder(
                    itemCount: filteredShedules.length,
                    itemBuilder: ((context, index) {
                      var shedule = filteredShedules[index];
                      bool isLastElement = index == filteredShedules.length - 1;
                      return Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              gradient: const LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Color(0xFFC3DED6),
                                  Color.fromARGB(255, 255, 255, 255),
                                ],
                              )),
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Padding(
                            padding: const EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          shedule["doctor_name"],
                                          style: const TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          shedule["category"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade700),
                                        ),
                                      ],
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage(shedule["doctor_profile"]),
                                      backgroundColor:
                                          Color.fromARGB(255, 161, 255, 210),
                                      radius: 30,
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Divider(
                                  color: Color.fromARGB(255, 168, 168, 168),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Iconsax.calendar_1,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          size: 18,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          " 12/12/2023",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade800),
                                        )
                                      ],
                                    ),
                                    const Spacer(),
                                    Row(
                                      children: [
                                        Icon(
                                          Iconsax.clock,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                          size: 18,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          "10:30 AM",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade700),
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Row(
                                      children: [
                                        const Icon(
                                          Dot.primitive_dot,
                                          color:
                                              Color.fromARGB(255, 90, 240, 97),
                                          size: 20,
                                        ),
                                        const SizedBox(
                                          width: 3,
                                        ),
                                        Text(
                                          shedule["status"],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.grey.shade800),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                Config.spaceSmall,
                                Row(
                                  children: const [
                                    CustomIcon(
                                      text: "Cancel",
                                      colorBtn: Color(0xFFF4F5F9),
                                      colorTxt: Colors.black,
                                      route: '',
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    CustomIcon(
                                      text: "Reshedule",
                                      colorBtn: Config.primatyColor,
                                      colorTxt: Colors.white,
                                      route: '',
                                    )
                                  ],
                                )
                              ],
                            ),
                          ));
                    }),
                  ))
                ],
              ),
            )));
  }
}

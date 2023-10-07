import 'package:flutter/material.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:doctorappointment/components/custom_icon.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SuccessBook extends StatefulWidget {
  const SuccessBook({super.key});

  @override
  State<SuccessBook> createState() => _SuccessBookState();
}

class _SuccessBookState extends State<SuccessBook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
          height: Config.screenHeight,
          width: Config.screenWidth,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFE6F3EA),
              Color(0xFF509D89),
            ],
          )),
          child: Column(
            children: [
              SvgPicture.asset(
                'assets/svg/wewe2.svg',
                semanticsLabel: 'My SVG Image',
              ),
              const Text(
                'Your booking is confirmed',
                style: TextStyle(
                    color: Color.fromARGB(255, 124, 255, 192),
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Color.fromARGB(31, 255, 255, 255),
                        offset: Offset(5.0, 5.0),
                      ),
                    ],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              color: Color.fromARGB(0, 0, 0, 0),
              height: 120, // Adjust the height as needed
              child: Column(
                children: const [
                  SizedBox(
                    height: 30,
                  ),
                  CustomIcon(
                      text: "Back to home",
                      colorBtn: Color.fromARGB(255, 96, 189, 164),
                      colorTxt: Colors.white,
                      route: 'main')
                ],
              )),
        )
      ]),
    );
  }
}

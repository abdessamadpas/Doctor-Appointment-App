import 'package:flutter/material.dart';
import 'package:doctorappointment/utils/config.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon(
      {super.key,
      required this.text,
      required this.colorBtn,
      required this.colorTxt,
      required this.route});
  final String text;
  final Color colorBtn;
  final Color colorTxt;
  final String? route;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, route!);
          },
          child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: colorBtn, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: colorTxt,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
              ))),
    );
  }
}

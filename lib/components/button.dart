import 'package:doctorappointment/utils/config.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final double width;
  final String title;
  final bool disable;
  final Function() onPress;
  const Button(
      {super.key,
      required this.width,
      required this.title,
      required this.disable,
      required this.onPress});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Config.primatyColor,
              foregroundColor: Colors.white),
          onPressed: disable ? null : onPress,
          child: Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          )),
    );
  }
}

import 'package:doctorappointment/utils/config.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key, required this.social});
  final String social;
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 8),
          side: const BorderSide(width: 1, color: Colors.black)),
      onPressed: () {},
      child: SizedBox(
          width: Config.widthSize * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                'assets/images/$social.png',
                width: 40,
                height: 40,
              ),
              Text(
                social.toUpperCase(),
                style: const TextStyle(color: Colors.black),
              )
            ],
          )),
    );
  }
}

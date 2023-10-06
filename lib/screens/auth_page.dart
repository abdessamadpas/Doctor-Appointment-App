import 'package:doctorappointment/components/login_form.dart';
import 'package:doctorappointment/components/social_button.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:doctorappointment/utils/text.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            Apptext.enText['welcome_text']!,
            style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
          Config.spaceSmall,
          Text(
            Apptext.enText['signIn_text']!,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Config.spaceSmall,
          LoginForm(),
          Config.spaceSmall,
          Center(
              child: TextButton(
                  child: Text(
                    Apptext.enText['forgot_password']!,
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onPressed: () {})),
          // add social nutton sign in
          Spacer(),
          Center(
            child: Text(
              Apptext.enText['social_text']!,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.grey.shade500),
            ),
          ),
          Config.spaceSmall,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SocialButton(social: 'google'),
              SocialButton(social: 'facebook'),
            ],
          ),
          Config.spaceSmall,

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                Apptext.enText['signUp_text']!,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.grey.shade500),
              ),
              TextButton(
                  child: const Text(
                    "Sign Up",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  onPressed: () {})
            ],
          )
        ],
      )),
    ));
  }
}

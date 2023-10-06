import 'package:doctorappointment/components/button.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool obsecurePass = true;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextFormField(
              controller: _emailController,
              keyboardType: TextInputType.emailAddress,
              cursorColor: Config.primatyColor,
              decoration: const InputDecoration(
                labelText: 'Email',
                hintText: 'Email address',
                alignLabelWithHint: true,
                prefixIcon: Icon(Icons.email_outlined),
                // prefixIconColor: Config.primatyColor
              ),
            ),
            Config.spaceSmall,
            TextFormField(
              controller: _passwordController,
              keyboardType: TextInputType.visiblePassword,
              cursorColor: Config.primatyColor,
              obscureText: obsecurePass,
              decoration: InputDecoration(
                  labelText: 'Password',
                  hintText: 'password',
                  alignLabelWithHint: true,
                  prefixIcon: Icon(Icons.lock_outline),
                  // prefixIconColor: Config.primatyColor,
                  suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obsecurePass = !obsecurePass;
                        });
                      },
                      icon: obsecurePass
                          ? Icon(Icons.visibility_outlined)
                          : Icon(Icons.visibility_off_outlined))),
            ),
            Config.spaceSmall,
            Button(
              width: double.infinity,
              title: 'SignIn',
              disable: false,
              onPress: () {
                Navigator.of(context).pushNamed("main");
              },
            )
          ],
        ));
  }
}

import 'package:doctorappointment/main_layout.dart';
import 'package:doctorappointment/screens/auth_page.dart';
import 'package:doctorappointment/screens/doctor_details.dart';
import 'package:doctorappointment/screens/booking_page.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static final NavigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: NavigatorKey,
      debugShowCheckedModeBanner: false,
      title: 'Sir Ltbib',
      theme: ThemeData(
        fontFamily: 'HankenGrotesk',
        primarySwatch: Colors.blue,
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Config.primatyColor,
          border: Config.outlinedBorder,
          focusedBorder: Config.focusedBorder,
          errorBorder: Config.errorBorder,
          enabledBorder: Config.outlinedBorder,
          floatingLabelStyle: TextStyle(color: Config.primatyColor),
          prefixIconColor: Colors.black38,
        ),
        scaffoldBackgroundColor: Colors.white,
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //     backgroundColor: Config.primatyColor,
        //     selectedItemColor: Colors.white,
        //     showSelectedLabels: true,
        //     showUnselectedLabels: false,
        //     unselectedItemColor: Colors.grey.shade700,
        //     elevation: 10,
        //     type: BottomNavigationBarType.fixed)
      ),
      initialRoute: '/',
      routes: {
        // this is the initial route of the app which is auth page (login and signup)
        '/': (context) => const AuthPage(),
        'main': (context) => const MainLayout(),
        'doctorDetails': (context) => const DoctorDetails(),
        'booking_page': (context) => const BookingPage(),
      },
    );
  }
}

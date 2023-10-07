import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:doctorappointment/components/custom_icon.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
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
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  const Text(
                    "Payment",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const Spacer(
                    flex: 2,
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 190,
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                    color: Color(0xFF129A7F),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bank card',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                    Spacer(),
                    Container(
                      height: 40,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Color(0xFF0D8A71),
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xFF0D8A71),
                                borderRadius: BorderRadius.circular(5)),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 100,
                          decoration: BoxDecoration(
                              color: Color(0xFF0D8A71),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text('By adding a debit/ credit card, you agree to the  ',
                  style: TextStyle(
                      color: Colors.grey.shade200,
                      fontSize: 13,
                      fontWeight: FontWeight.normal)),
              const Text('Terms & Conditions ',
                  style: TextStyle(
                      color: Color.fromARGB(255, 77, 139, 79),
                      fontSize: 12,
                      fontWeight: FontWeight.bold)),
            ],
          )),
      Positioned(
        left: 0,
        right: 0,
        bottom: 0,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            color: Color.fromARGB(0, 0, 0, 0),
            height: 120, // Adjust the height as needed
            child: Column(
              children: [
                // button
                const SizedBox(
                  height: 30,
                ),
                const CustomIcon(
                    text: "Confirm Payment",
                    colorBtn: Color.fromARGB(255, 96, 189, 164),
                    colorTxt: Colors.white,
                    route: 'success_book')
              ],
            )),
      )
    ])));
  }
}

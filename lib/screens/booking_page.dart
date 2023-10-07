import 'package:flutter/material.dart';
import 'package:doctorappointment/utils/config.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:doctorappointment/components/custom_icon.dart';
import 'package:iconsax/iconsax.dart';

class BookingPage extends StatefulWidget {
  const BookingPage({super.key});

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime _currentDay = DateTime.now();
  int? _selectedIndex;
  int? _selectedFeesIndex;
  bool _isWeekend = false;
  bool _dateSelected = false;
  bool _timeSelected = false;

  List<Map<String, dynamic>> freesInformation = [
    {
      "type": "Video call",
      "description": "can make a video call with doctor",
      "price": 30,
      'icon': Iconsax.video
    },
    {
      "type": "To Home",
      "description": "can message with doctor",
      "price": 150,
      "icon": Iconsax.home
    },
    {
      "type": "Voice call",
      "description": "can make a voice call with doctor",
      "price": 20,
      "icon": Iconsax.call
    }
  ];
  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        height: Config.screenHeight,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFFE6F3EA),
            Color(0xFF509D89),
          ],
        )),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                        "Appointment",
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
                  _TableCalendar(),
                  Config.spaceSmall,
                  const Text(
                    "Select Consultation Time",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 21,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            _isWeekend
                ? SliverToBoxAdapter(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 5),
                      alignment: Alignment.center,
                      child: const Text(
                        "Sorry, we are closed on weekends",
                        style: TextStyle(
                          color: Color.fromARGB(255, 216, 118, 118),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  )
                : SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        return InkWell(
                          splashColor: Color.fromARGB(146, 33, 238, 36),
                          onTap: () {
                            setState(() {
                              _selectedIndex = index;
                              _timeSelected = true;
                            });
                          },
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 6),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xFF509D89)),
                                borderRadius: BorderRadius.circular(12),
                                color: _selectedIndex == index
                                    ? Color(0xFF509D89)
                                    : Color.fromARGB(255, 240, 240, 240),
                              ),
                              alignment: Alignment.center,
                              child: Text(
                                '${index + 9}:00 ${index + 9 > 11 ? "PM" : "AM"} ',
                                style: TextStyle(
                                  color: _selectedIndex == index
                                      ? Color.fromARGB(255, 252, 252, 252)
                                      : Color.fromARGB(255, 150, 150, 150),
                                  fontSize: 14,
                                  fontWeight: _selectedIndex == index
                                      ? FontWeight.bold
                                      : FontWeight.w400,
                                ),
                              )),
                        );
                      },
                      childCount: 8,
                    ),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 1.6,
                            mainAxisSpacing: 0,
                            crossAxisSpacing: 6)),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: const Text("fees Information",
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontSize: 21.0,
                        fontWeight: FontWeight.normal)),
              ),
            ),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    return InkWell(
                      splashColor: Color.fromARGB(146, 33, 238, 36),
                      onTap: () {
                        setState(() {
                          _selectedFeesIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 6),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _selectedFeesIndex == index
                              ? Color(0xFFFFA873)
                              : Color.fromARGB(255, 240, 240, 240),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 25,
                              backgroundColor:
                                  Color.fromARGB(255, 255, 255, 255),
                              child: Icon(
                                freesInformation[index]['icon'],
                                color: _selectedFeesIndex == index
                                    ? Color(0xFFFFA873)
                                    : Color(0xFFA079EC),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  freesInformation[index]['type'],
                                  style: TextStyle(
                                    color: _selectedFeesIndex == index
                                        ? Color.fromARGB(255, 252, 252, 252)
                                        : Color.fromARGB(255, 150, 150, 150),
                                    fontSize: 16,
                                    fontWeight: _selectedFeesIndex == index
                                        ? FontWeight.bold
                                        : FontWeight.w400,
                                  ),
                                ),
                                Text(
                                  "can make a video call with doctor",
                                  style: TextStyle(
                                    color: _selectedFeesIndex == index
                                        ? Color.fromARGB(255, 252, 252, 252)
                                        : Color.fromARGB(255, 150, 150, 150),
                                    fontSize: 12,
                                    fontWeight: _selectedFeesIndex == index
                                        ? FontWeight.bold
                                        : FontWeight.w400,
                                  ),
                                )
                              ],
                            ),
                            Spacer(),
                            Text(
                              "\$ " +
                                  freesInformation[index]['price'].toString(),
                              style: TextStyle(
                                color: _selectedFeesIndex == index
                                    ? Color.fromARGB(255, 252, 252, 252)
                                    : Color(0xFF509D89),
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  childCount: 3,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 4,
                    mainAxisSpacing: 0,
                    crossAxisSpacing: 2)),
            SliverToBoxAdapter(
              child: Container(
                margin: EdgeInsets.only(top: 130),
              ),
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
            color: Color.fromARGB(255, 255, 255, 255),
            height: 120, // Adjust the height as needed
            child: Column(
              children: [
                Row(
                  children: const [
                    Text('Consummation price',
                        style: TextStyle(
                            color: Color.fromARGB(255, 170, 170, 170),
                            fontSize: 17.0,
                            fontWeight: FontWeight.normal)),
                    Spacer(),
                    Text('\$ 30',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold)),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // button
                const CustomIcon(
                    text: "pay now",
                    colorBtn: Color.fromARGB(255, 96, 189, 164),
                    colorTxt: Colors.white,
                    route: 'payment_page')
              ],
            )),
      )
    ])));
  }

  Widget _TableCalendar() {
    return TableCalendar(
      focusedDay: _focusedDay,
      firstDay: DateTime.now(),
      lastDay: DateTime(2023, 12, 31),
      calendarFormat: _calendarFormat,
      currentDay: _currentDay,
      rowHeight: 45,
      calendarStyle: const CalendarStyle(
        todayDecoration: BoxDecoration(
          color: Color(0xFF509D89),
          shape: BoxShape.circle,
        ),
      ),
      availableCalendarFormats: const {
        CalendarFormat.month: 'Month',
      },
      onFormatChanged: (format) {
        setState(() {
          _calendarFormat = format;
        });
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _currentDay = selectedDay;
          _focusedDay = focusedDay;
          _dateSelected = true;
          // check if selected day is weekend
          if (selectedDay.weekday == 6 || selectedDay.weekday == 7) {
            _isWeekend = true;
            _timeSelected = false;
            _selectedIndex = null;
          } else {
            _isWeekend = false;
          }
        });
      },
    );
  }
}

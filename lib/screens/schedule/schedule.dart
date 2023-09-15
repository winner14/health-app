import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/widgets/my_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _HomeState();
}

class _HomeState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: days.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Container(
                    height: 110,
                    width: 90,
                    decoration: BoxDecoration(
                      color: index == 0
                          ? myPrimaryColor
                          : index % 2 == 1
                              ? myFgColor
                              : myFgColorAlt,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 4),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: days[index].toString(),
                            fontSize: 20,
                            fontWeight: FontWeight.w400,
                            color: index == 0 ? Colors.white : Colors.black,
                          ),
                          MyText(
                            text:
                                '${weekdays[index][0]}${weekdays[index][1]}${weekdays[index][2]}',
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                            color: index == 0 ? Colors.white : Colors.black,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 430,
            child: ListView.builder(
              itemCount: image.length,
              itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        MyText(text: time[index]),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Container(
                              height: .3,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // height: 90,
                    decoration: BoxDecoration(
                      color: index == 0
                          ? myPrimaryColor
                          : index % 2 == 1
                              ? myFgColor
                              : myFgColorAlt,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              color: myFgColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(100)),
                              image: DecorationImage(
                                image: AssetImage(image[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: appointmentTime[index],
                                  fontWeight: FontWeight.w400,
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                                MyText(
                                  text: docName[index],
                                  fontWeight: FontWeight.w500,
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                                MyText(
                                  text: title[index],
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List days = [10, 11, 12, 13, 14, 15, 16];
  List weekdays = [
    'Sunday',
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday'
  ];
  List image = [
    'assets/images/Ellipse 11.png',
    'assets/images/Ellipse 12.png',
    'assets/images/Ellipse 11.png'
  ];
  List time = ['10:30 AM', '11:30 AM', '12:30 PM'];
  List appointmentTime = ['6:30 AM', '7:30 AM', '8:30 AM'];
  List docName = ['Mrs Anne Pal', 'Dr Dave Okyere', 'Mrs Anne Pal'];
  List title = ['Nurse', 'Doctor', 'Nurse'];
}

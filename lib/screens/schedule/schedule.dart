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
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      color: index == 0 ? myPrimaryColor : myFgColor,
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
              itemCount: 3,
              itemBuilder: (context, index) => Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      children: [
                        const MyText(text: '3:20 PM'),
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
                      color: index == 0 ? myPrimaryColor : myFgColor,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Container(
                            height: 80,
                            width: 80,
                            decoration: const BoxDecoration(
                              color: myFgColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                MyText(
                                  text: '10:30 AM',
                                  fontWeight: FontWeight.w400,
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                                MyText(
                                  text: 'Mrs Anne Pal',
                                  fontWeight: FontWeight.w500,
                                  color:
                                      index == 0 ? Colors.white : Colors.black,
                                ),
                                MyText(
                                  text: 'Nurse',
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
}

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
                  itemCount: 4,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Container(
                    height: 120,
                    width: 90,
                    decoration: const BoxDecoration(
                      color: myPrimaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                  ),
                ),
              )),
          const Row(
            children: [
              MyText(
                text: 'Services',
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: SizedBox(
              height: 110,
              child: ListView.builder(
                itemCount: images.length,
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Container(
                    height: 120,
                    width: 90,
                    decoration: BoxDecoration(
                      color: myPrimaryColor,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Container(
              height: 180,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: myFgColor1,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: const Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: 'Get the Best\nMedical Service',
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                          MyText(
                              text:
                                  'Transforming lives through healthcare\nJoin us on the jouney')
                        ],
                      ),
                    ),
                    Image(
                      image: AssetImage('assets/images/rm.png'),
                      height: 160,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Row(
            children: [
              MyText(
                text: 'Upcoming appointments',
                fontWeight: FontWeight.w500,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Container(
                    height: 100,
                    width: 260,
                    decoration: const BoxDecoration(
                      color: myPrimaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(6),
                          child: Container(
                            width: 80,
                            decoration: const BoxDecoration(
                              color: Color(0xFF5CBA91),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  MyText(
                                    text: '12',
                                    color: Colors.white,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  MyText(
                                    text: 'Tue',
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: '09:30 AM',
                                color: Colors.white,
                              ),
                              MyText(
                                text: 'David Okyere',
                                fontWeight: FontWeight.w500,
                                color: Colors.white,
                              ),
                              MyText(
                                text: 'Nurse',
                                color: Colors.white,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: const BoxDecoration(
                      color: Color(0xFF796732),
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: '24',
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                          MyText(
                            text: 'Sun',
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  List images = [
    'assets/images/top-view.jpg',
    'assets/images/injection.jpg',
    'assets/images/medicine_bottle.jpg',
    'assets/images/medium-shot-doctor.jpg'
  ];
}

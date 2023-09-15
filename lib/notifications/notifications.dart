import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/widgets/my_text.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _HomeState();
}

class _HomeState extends State<Notifications> {
  double listLength = 110;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox(
        width: double.infinity,
        height: listLength * notifIcon.length,
        child: ListView.builder(
          itemCount: notifIcon.length,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                color: index % 2 == 0 ? myFgColor : myFgColorAlt,
                borderRadius: const BorderRadius.all(Radius.circular(15)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Row(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(100)),
                      ),
                      child: Icon(
                        notifIcon[index],
                        color: myPrimaryColor,
                        size: 40,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText(
                            text: notifTitles[index],
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                          ),
                          MyText(
                            text: notifPreview[index],
                            color: Colors.black54,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  List notifTitles = [
    '3 Schedules',
    '14 Messages',
    'Medicine',
    'Vaccine Update',
    'General Health'
  ];
  List notifPreview = [
    'Check your schedules.',
    'Check messages',
    'Check medicine',
    'Vaccine update available',
    'Check for new updates',
  ];
  List<IconData> notifIcon = [
    Icons.calendar_today,
    Icons.message,
    Icons.medical_services,
    Icons.vaccines,
    Icons.accessibility,
  ];
}

import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/home/home.dart';
import 'package:health_app/screens/report/report.dart';
import 'package:health_app/screens/schedule/schedule.dart';
import 'package:health_app/widgets/my_text.dart';
import 'package:google_fonts/google_fonts.dart';

class Chasis extends StatefulWidget {
  const Chasis({super.key});

  @override
  State<Chasis> createState() => _ChasisState();
}

class _ChasisState extends State<Chasis> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: mySecondaryColor,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  selectedIndex == 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Row(
                              children: [
                                Icon(
                                  Icons.notifications_active,
                                  color: myPrimaryColor,
                                  size: 30,
                                ),
                                MyText(
                                  text: ' Hello!',
                                  fontSize: 18,
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myPrimaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/two-doctors.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            )
                          ],
                        )
                      : const Row(
                          children: [
                            Icon(
                              Icons.arrow_back_ios,
                              color: myPrimaryColor,
                            ),
                          ],
                        ),
                  selectedIndex == 0
                      ? Row(
                          children: [
                            Text(
                              'Ayo Williams',
                              style: GoogleFonts.roboto(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      : selectedIndex == 1
                          ? Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Schedule',
                                  style: GoogleFonts.roboto(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                const Icon(
                                  Icons.calendar_month,
                                  size: 30,
                                )
                              ],
                            )
                          : selectedIndex == 2
                              ? Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Report',
                                      style: GoogleFonts.roboto(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.text_snippet,
                                      size: 30,
                                    )
                                  ],
                                )
                              : Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      'Notifications',
                                      style: GoogleFonts.roboto(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.notifications,
                                      size: 30,
                                    )
                                  ],
                                ),
                  selectedIndex == 0
                      ? const Home()
                      : selectedIndex == 1
                          ? const Schedule()
                          : selectedIndex == 2
                              ? const Report()
                              : const SizedBox(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 65,
        child: BottomNavigationBar(
          backgroundColor: mySecondaryColor,
          elevation: 0,
          iconSize: 28,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Schedule',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.text_snippet),
              label: 'Report',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
          ],
          currentIndex: selectedIndex,
          selectedItemColor: myPrimaryColor,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.black54,
          onTap: onTapItem,
        ),
      ),
    );
  }

  int selectedIndex = 0;

  // static const List<Widget> _widgetOptions = <Widget>[
  //   Text('Chasis Page'),
  //   Text('Business Page'),
  //   Text('School Page'),
  // ];

  void onTapItem(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  List images = [
    'assets/images/top-view.jpg',
    'assets/images/injection.jpg',
    'assets/images/medicine_bottle.jpg',
    'assets/images/medium-shot-doctor.jpg'
  ];
}

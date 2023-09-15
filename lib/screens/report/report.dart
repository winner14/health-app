import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/widgets/my_text.dart';
// import 'package:google_fonts/google_fonts.dart';

class Report extends StatefulWidget {
  const Report({super.key});

  @override
  State<Report> createState() => _HomeState();
}

class _HomeState extends State<Report> {
  final ScrollController outerScrollController = ScrollController();
  final ScrollController innerScrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    innerScrollController.addListener(_onInnerScroll);
  }

  @override
  void dispose() {
    innerScrollController.removeListener(_onInnerScroll);
    super.dispose();
  }

  // Inner scroll view has reached its end, scroll the outer scroll view down or up.
  void _onInnerScroll() {
    if (innerScrollController.position.atEdge &&
        innerScrollController.position.pixels != 0) {
      outerScrollController.animateTo(
        outerScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
    if (innerScrollController.position.atEdge &&
        innerScrollController.position.pixels == 0) {
      outerScrollController.animateTo(
        outerScrollController.position.minScrollExtent,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  double listLength = 108;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: myPrimaryColor,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const MyText(
                          text: 'Heart Rate',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const MyText(
                              text: '96',
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.w500,
                            ),
                            Container(
                              transform: Matrix4.translationValues(0, -8, 0),
                              child: const MyText(
                                text: 'bpm',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Image(image: AssetImage('assets/images/Pulse.png')),
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            controller: outerScrollController,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: Container(
                            height: 150,
                            decoration: const BoxDecoration(
                              color: myFgColor1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: const Padding(
                              padding: EdgeInsets.all(15),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.water_drop,
                                        size: 40,
                                        color: Colors.red,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        // color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  MyText(
                                    text: 'Blood Group',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  MyText(
                                    text: 'A+',
                                    fontSize: 40,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                            height: 150,
                            decoration: const BoxDecoration(
                              color: myFgColor1,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.fitness_center,
                                        size: 40,
                                        color: Colors.red,
                                      ),
                                      Icon(
                                        Icons.more_horiz,
                                        // color: Colors.red,
                                      ),
                                    ],
                                  ),
                                  const MyText(
                                    text: 'Weight',
                                    fontWeight: FontWeight.w400,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const MyText(
                                        text: '80',
                                        fontSize: 40,
                                        fontWeight: FontWeight.w500,
                                      ),
                                      Container(
                                        transform:
                                            Matrix4.translationValues(0, -8, 0),
                                        child: const MyText(
                                          text: 'kg',
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const Row(
                  children: [
                    MyText(
                      text: 'Latest Report',
                      fontWeight: FontWeight.w400,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: SizedBox(
                    height: listLength * 3,
                    child: ListView.builder(
                      controller: innerScrollController,
                      itemCount: 3,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            color: myFgColor,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 80,
                                      decoration: const BoxDecoration(
                                        color: Colors.black,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                      ),
                                      child: const Icon(
                                        Icons.accessibility,
                                        color: myPrimaryColor,
                                        size: 40,
                                      ),
                                    ),
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 15),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          MyText(
                                            text: 'General Health',
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20,
                                          ),
                                          MyText(
                                            text: '30mins',
                                            color: Colors.black54,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Icon(Icons.more_vert),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

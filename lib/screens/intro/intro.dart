import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/home/home.dart';
import 'package:health_app/widgets/my_button.dart';
import 'package:health_app/widgets/my_text.dart';

import '../auth/login/login.dart';

class Intro extends StatelessWidget {
  const Intro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: myPrimaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // MyText(
                  //   text: 'Diri Health Service',
                  //   fontSize: 30,
                  //   color: mySecondaryColor,
                  //   fontWeight: FontWeight.bold,
                  // ),
                  Image(image: AssetImage('assets/images/logo_raw.png'))
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    // height: 260,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: mySecondaryColor,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // const Icon(
                          //   Icons.favorite,
                          //   size: 75,
                          //   color: myPrimaryColor,
                          // ),
                          const Image(
                            image: AssetImage('assets/images/health-heart.jpg'),
                          ),
                          const Padding(
                            padding: EdgeInsets.all(18),
                            child: MyText(
                              text:
                                  "Take care of your body.\nIt's the only one you have to live.",
                              fontSize: 18,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: MyButton(
                              text: 'Get Started',
                              textSize: 22,
                              color: myPrimaryColor,
                              textColor: mySecondaryColor,
                              fontWeight: FontWeight.w500,
                              height: 50,
                              width: 250,
                              borderRadius: 20,
                              onPressed: () {
                                nextScreen(context, const Login());
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

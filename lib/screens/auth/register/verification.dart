import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/home/home.dart';
import 'package:health_app/widgets/my_text.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  List verificationCode = [null, null, null, null];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: mySecondaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: myPrimaryColor,
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: mySecondaryColor,
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 20),
              child: MyText(
                text: 'Verification',
                fontSize: 24,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 40),
              child: MyText(
                text: 'Please enter the code sent to\nn***@gmail.com',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
              width: 320,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: verificationCode.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 1,
                        color: myPrimaryColor,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                    ),
                    child: verificationCode[index] != null
                        ? Center(
                            child: MyText(
                              text: verificationCode[index].toString(),
                              fontSize: 20,
                            ),
                          )
                        : const SizedBox(),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const MyText(text: "I didn't receive a code. "),
                  GestureDetector(
                    onTap: () {
                      //add function later
                    },
                    child: const MyText(
                      text: 'Resend',
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 300,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              addCode(1);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '1',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(2);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '2',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(3);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '3',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              addCode(4);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '4',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(5);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '5',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(6);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '6',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              addCode(7);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '7',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(8);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '8',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(9);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '9',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 50,
                            width: 50,
                          ),
                          GestureDetector(
                            onTap: () {
                              addCode(0);
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: '0',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // nextScreen(context, const Home());
                              for (var i = 4; i > 0; i--) {
                                if (verificationCode[i - 1] != null) {
                                  setState(() {
                                    verificationCode[i - 1] = null;
                                  });
                                  break;
                                }
                              }
                            },
                            child: Container(
                              height: 50,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: myFgColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(100)),
                              ),
                              child: const Center(
                                child: MyText(
                                  text: 'x',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void addCode(int code) {
    for (int i = 0; i < 4; i++) {
      if (verificationCode[i] == null) {
        setState(() {
          verificationCode[i] = code;
        });
        break;
      }
    }
  }
}

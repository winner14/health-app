import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/chasis/chasis.dart';
// import 'package:health_app/screens/home/home.dart';3
import 'package:health_app/widgets/my_button.dart';
import 'package:health_app/widgets/my_text.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  List verificationCode = [null, null, null, null];
  var testCode = [1, 2, 3, 4];

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
                          MyButton(
                            text: '1',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(1);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: '2',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(2);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: '3',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(3);
                              onLastCodeIndex();
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            text: '4',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(4);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: '5',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(5);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: '6',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(6);
                              onLastCodeIndex();
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyButton(
                            text: '7',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(7);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: '8',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(8);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: '9',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(9);
                              onLastCodeIndex();
                            },
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
                          MyButton(
                            text: '0',
                            height: 60,
                            textSize: 19,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              addCode(0);
                              onLastCodeIndex();
                            },
                          ),
                          MyButton(
                            text: 'x',
                            height: 60,
                            textSize: 20,
                            textColor: Colors.black,
                            color: myFgColor,
                            fontWeight: FontWeight.w500,
                            borderRadius: 100,
                            width: 60,
                            onPressed: () {
                              for (var i = 4; i > 0; i--) {
                                if (verificationCode[i - 1] != null) {
                                  setState(() {
                                    verificationCode[i - 1] = null;
                                  });
                                  break;
                                }
                              }
                            },
                            onLongPress: () {
                              for (int i = 0; i < 4; i++) {
                                setState(() {
                                  verificationCode[i] = null;
                                });
                              }
                            },
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

  void onLastCodeIndex() {
    if (verificationCode[3] != null) {
      bool verified = true;
      for (var i = 0; i < 4; i++) {
        if (verificationCode[i] != testCode[i]) {
          verified = false;
          break;
        }
      }

      if (verified == true) {
        nextScreen(context, const Chasis());
      } else {
        showSnackbarWithoutAction(
          context,
          myPrimaryColor,
          "Invalid code. Try again or press 'Resend' to get new code",
        );
        for (int i = 0; i < 4; i++) {
          setState(() {
            verificationCode[i] = null;
          });
        }
      }
    }
  }
}

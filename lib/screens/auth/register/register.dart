import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/auth/login/login.dart';
import 'package:health_app/screens/auth/register/verification.dart';
// import 'package:health_app/screens/auth/register/register.dart';
import 'package:health_app/widgets/my_button.dart';
import 'package:health_app/widgets/my_text.dart';

import '../../home/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              Container(
                height: 480,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: myPrimaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                child: Column(
                  children: [
                    Container(
                      transform: Matrix4.translationValues(0, 30, 0),
                      child: const Image(
                        image: AssetImage('assets/images/logo_raw.png'),
                        // height: 80,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                        width: double.infinity,
                        height: 420,
                        transform: Matrix4.translationValues(0, 50, 0),
                        decoration: BoxDecoration(
                          color: mySecondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          border: Border.all(width: 1, color: myPrimaryColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: [
                              const MyText(
                                text: 'Sign Up',
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                              ),
                              Form(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: myPrimaryColor,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              borderSide: BorderSide.none,
                                            ),
                                            labelText: 'Name',
                                            hintText: 'Ayo Williams',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: myPrimaryColor,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              borderSide: BorderSide.none,
                                            ),
                                            labelText: 'Email',
                                            hintText: 'nick@gmail.com',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: myPrimaryColor,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              borderSide: BorderSide.none,
                                            ),
                                            labelText: 'Password',
                                            hintText: '********',
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 8),
                                      child: Container(
                                        height: 50,
                                        width: 350,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 1,
                                            color: myPrimaryColor,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(30)),
                                        ),
                                        child: TextFormField(
                                          decoration: const InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30)),
                                              borderSide: BorderSide.none,
                                            ),
                                            labelText: 'Confirm Password',
                                            hintText: '********',
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8),
                                child: MyButton(
                                  text: 'Continue',
                                  fontWeight: FontWeight.w500,
                                  borderRadius: 30,
                                  width: 350,
                                  onPressed: () {
                                    nextScreen(context, const Verification());
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50),

                // transform: Matrix4.translationValues(0, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const MyText(text: "Already have an account? "),
                    GestureDetector(
                      onTap: () {
                        nextScreen(context, const Login());
                      },
                      child: const SizedBox(
                        child: MyText(
                          text: 'Login',
                          color: Colors.red,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

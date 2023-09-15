import 'package:flutter/material.dart';
import 'package:health_app/constants.dart';
import 'package:health_app/screens/auth/register/register.dart';
import 'package:health_app/screens/chasis/chasis.dart';
import 'package:health_app/widgets/my_button.dart';
import 'package:health_app/widgets/my_text.dart';

import '../../home/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                height: 430,
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
                        height: 370,
                        transform: Matrix4.translationValues(0, 50, 0),
                        decoration: BoxDecoration(
                          color: mySecondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(40)),
                          border: Border.all(width: 1, color: myPrimaryColor),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(30),
                          child: Column(
                            children: [
                              const MyText(
                                text: 'Login',
                                fontSize: 26,
                                fontWeight: FontWeight.w500,
                              ),
                              Form(
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
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
                                            prefixIcon: Icon(Icons.email),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
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
                                            prefixIcon: Icon(Icons.lock),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Row(
                                children: [
                                  MyText(
                                    text: 'Forgot password?',
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 10),
                                child: MyButton(
                                  text: 'Continue',
                                  fontWeight: FontWeight.w500,
                                  borderRadius: 30,
                                  width: 350,
                                  onPressed: () {
                                    nextScreen(context, const Chasis());
                                    // print('woring');
                                  },
                                ),
                              ),
                              Container(
                                decoration: const BoxDecoration(
                                  color: myFgColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(20)),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 8, vertical: 2),
                                  child: MyText(text: 'OR'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 30),
                child: Container(
                  transform: Matrix4.translationValues(0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          // add function later
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.facebook,
                            size: 40,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          //add function later
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Icon(
                            Icons.g_mobiledata,
                            size: 40,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 30),
                child: Container(
                  // transform: Matrix4.translationValues(0, 50, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MyText(text: "Don't have an account? "),
                      GestureDetector(
                        onTap: () {
                          nextScreen(context, const Register());
                          print('heeyyy');
                        },
                        child: const SizedBox(
                          child: MyText(
                            text: 'Sign Up',
                            color: Colors.red,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

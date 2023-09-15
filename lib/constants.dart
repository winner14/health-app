import 'package:flutter/material.dart';
import 'package:health_app/widgets/my_text.dart';

const myPrimaryColor = Color(0xFF4DC38C);
const mySecondaryColor = Color(0xFFFFFFFF);
const myFgColor = Color(0xFFEBEEEB);
const myFgColor1 = Color(0xFFC8e8EA);

//next screen
void nextScreen(context, screen) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => screen),
  );
}

//snackbar
void showSnackbar(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: MyText(
        text: message,
        color: Colors.white,
        fontWeight: FontWeight.w300,
      ),
      duration: const Duration(seconds: 5),
      action: SnackBarAction(
        label: 'Okay',
        textColor: Colors.white,
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    ),
  );
}

//snackbar without action
void showSnackbarWithoutAction(context, color, message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: color,
      content: MyText(
        text: message,
        color: Colors.white,
      ),
      duration: const Duration(seconds: 5),
    ),
  );
}

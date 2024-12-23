import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: KprimaryColor,
      decoration: InputDecoration(
        hintText: 'Title',
        hintStyle: TextStyle(
          color: KprimaryColor,
        ),
        border: OutLineBorder(),
        enabledBorder: OutLineBorder(),
        focusedBorder: OutLineBorder(KprimaryColor),
      ),
    );
  }

  OutlineInputBorder OutLineBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}

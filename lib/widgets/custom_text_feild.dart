import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hintText, this.maxLines = 1});
  final String hintText;
  final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxLines,
      cursorColor: kprimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: kprimaryColor,
        ),
        border: OutLineBorder(),
        enabledBorder: OutLineBorder(),
        focusedBorder: OutLineBorder(kprimaryColor),
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

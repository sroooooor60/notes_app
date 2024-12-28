import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hintText, this.maxLines = 1, this.onSaved});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        //هنا بنضع الشرط الي عاوزينها علشان نتحكم في مدخلات اليوزر
        if (value?.isEmpty ?? true) {
          return 'Required Field';
        }
      },
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

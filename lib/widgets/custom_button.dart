import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: kprimaryColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Center(
              child: Text(
            'Add',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          )),
        ),
      ),
    );
  }
}

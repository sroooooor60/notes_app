import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.titel, required this.icon, this.onPressed});

  final String titel;
  final IconData icon;

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          titel,
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        Spacer(),
        CustomSearchIcon(
          onPress: onPressed,
          icon: icon,
        ),
      ],
    );
  }
}

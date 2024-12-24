import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_app_bar.dart';

class EditNotViewBody extends StatelessWidget {
  const EditNotViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            titel: 'Edit Note',
            icon: Icons.check,
          ),
        ],
      ),
    );
  }
}

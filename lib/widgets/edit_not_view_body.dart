import 'package:flutter/material.dart';
import 'package:nots_app/widgets/custom_app_bar.dart';
import 'package:nots_app/widgets/custom_text_feild.dart';

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
          SizedBox(
            height: 50,
          ),
          CustomTextField(hintText: 'Titel'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

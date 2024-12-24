import 'package:flutter/material.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/widgets/custom_button.dart';
import 'package:nots_app/widgets/custom_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              hintText: 'title',
            ),
            SizedBox(
              height: 16,
            ),
            CustomTextField(
              hintText: 'content',
              maxLines: 5,
            ),
            SizedBox(
              height: 32,
            ),
            CustomButton(),
          ],
        ),
      ),
    );
  }
}

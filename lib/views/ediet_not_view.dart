import 'package:flutter/material.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/widgets/edit_not_view_body.dart';

class EditNotView extends StatelessWidget {
  const EditNotView({super.key, required this.notes});
  final NotModel notes;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotViewBody(
        notes: notes,
      ),
    );
  }
}

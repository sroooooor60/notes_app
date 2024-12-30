import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nots_app/widgets/add_note_buttom_sheet.dart';
import 'package:nots_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            context: context,
            builder: (context) {
              return AddNoteButtomSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
      body: const NotesViewBody(),
    );
  }
}

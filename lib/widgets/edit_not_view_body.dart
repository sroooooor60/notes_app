import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/widgets/custom_app_bar.dart';
import 'package:nots_app/widgets/custom_text_feild.dart';

class EditNotViewBody extends StatefulWidget {
  const EditNotViewBody({super.key, required this.notes});

  final NotModel notes;

  @override
  State<EditNotViewBody> createState() => _EditNotViewBodyState();
}

class _EditNotViewBodyState extends State<EditNotViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.notes.title = title ?? widget.notes.title;
              widget.notes.subTitle = content ?? widget.notes.subTitle;
              widget.notes.save();
              BlocProvider.of<NotesCubit>(context).fitchAllNotes();
              Navigator.pop(context);
            },
            titel: 'Edit Note',
            icon: Icons.check,
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintText: 'Titel',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}

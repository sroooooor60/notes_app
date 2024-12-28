import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_cubit.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_stats.dart';
import 'package:nots_app/widgets/add_not_bottom_sheet_form.dart';
import 'package:nots_app/widgets/custom_button.dart';
import 'package:nots_app/widgets/custom_text_feild.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit, AddNotesStats>(
          listener: (context, state) {
            if (state is AddNotesFaliar) {
              print('failer ${state.errorMessag}');
            }

            if (state is AddNotesSucces) {
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            return ModalProgressHUD(
                inAsyncCall: state is AddNotesLoading ? true : false,
                child: const AddNotForm());
          },
        ),
      ),
    );
  }
}

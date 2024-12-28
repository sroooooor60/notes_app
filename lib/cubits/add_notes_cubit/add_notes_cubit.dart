import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_stats.dart';
import 'package:nots_app/models/not_model.dart';

class AddNotesCubit extends Cubit<AddNotesStats> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NotModel note) async {
    emit(AddNotesLoading());

    try {
      var notesBox = Hive.box<NotModel>(kNotsBox);
      await notesBox.add(note);
      emit(AddNotesSucces());
    } catch (e) {
      AddNotesFaliar(errorMessag: e.toString());
    }
  }
}










// Cubit pattern steps
// خطوات نمطية ثابتة لانشاء الكيوبت وهي :-

// 1- create states

// 2- create cubit

// 3- creat function

// 4- provide cubit

// 5- integrate cubit

// 6-trigger cubit
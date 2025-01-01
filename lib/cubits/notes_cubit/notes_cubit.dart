import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/notes_cubit/notes_stats.dart';
import 'package:nots_app/models/not_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(Notesinitial());
  List<NotModel>? notes;
  fitchAllNotes() {
    var notesBox = Hive.box<NotModel>(kNotsBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}

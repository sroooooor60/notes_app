import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_stats.dart';
import 'package:nots_app/models/not_model.dart';

class AddNotesCubit extends Cubit<AddNotesStats> {
  AddNotesCubit() : super(AddNotesInitial());

  addNote(NotModel note) {}
}










// Cubit pattern steps
// خطوات نمطية ثابتة لانشاء الكيوبت وهي :-

// 1- create states

// 2- create cubit

// 3- creat function

// 4- provide cubit

// 5- integrate cubit

// 6-trigger cubit
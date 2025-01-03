import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/constants.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_stats.dart';
import 'package:nots_app/models/not_model.dart';

class AddNotesCubit extends Cubit<AddNotesStats> {
  AddNotesCubit() : super(AddNotesInitial());
  Color color = Color(0xff563635);
  addNote(NotModel note) async {
    note.color = color.value;
    emit(AddNotesLoading());

    try {
      var notesBox = Hive.box<NotModel>(kNotsBox);
      await notesBox.add(note);
      emit(AddNotesSucces());
    } catch (e) {
      emit(AddNotesFaliar(errorMessag: e.toString()));
    }
  }
}










// Cubit pattern steps
// خطوات نمطية ثابتة لانشاء الكيوبت وهي :-

// 1- create states 

// 2- create cubit

// 3- creat function

// 4- provide cubit   MultiBlocProvider or BlocProvider بيتحط فوق شجرة الويدجيت علشان نقدر نوصلة من الأماكن كلها الي محتاجينة فيها 

// 5- integrate cubit  , BlocConsumer Or BlockBuilder Or BlocListner بيتحط في المكان الي بيتغير فية اليو اي 

// 6-trigger cubit     , BlocProvider.of<اسم كلاس الكيوبت>(context).اسم الميثود الي جوا الكيوبت();
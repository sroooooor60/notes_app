import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_notes_cubit/add_notes_stats.dart';

class AddNotesCubit extends Cubit<AddNotesStats> {
  AddNotesCubit() : super(AddNotesInitial());
}

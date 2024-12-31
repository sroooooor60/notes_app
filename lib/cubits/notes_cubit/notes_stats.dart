import 'package:nots_app/models/not_model.dart';

class NotesState {}

class Notesinitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
  final List<NotModel> notes;

  NotesSuccess({required this.notes});
}

class NotesFailure extends NotesState {
  final String errorMessage;

  NotesFailure({required this.errorMessage});
}

class AddNotesStats {}

class AddNotesInitial extends AddNotesStats {}

class AddNotesLoading extends AddNotesStats {}

class AddNotesSucces extends AddNotesStats {}

class AddNotesFaliar extends AddNotesStats {
  final String errorMessag;

  AddNotesFaliar({required this.errorMessag});
}

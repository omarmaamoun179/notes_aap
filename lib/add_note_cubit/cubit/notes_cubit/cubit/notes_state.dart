part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}

class NotesLoading extends NotesState {}

class NotesSuccess extends NotesState {
 final List<NoteModel> notes;

  NotesSuccess(this.notes);
}

class NotesFailed extends NotesState {
  final String errMessage;

  NotesFailed(this.errMessage);
}

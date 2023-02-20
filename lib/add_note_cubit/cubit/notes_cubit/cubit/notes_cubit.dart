import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> note = notesBox.values.toList();
      emit(NotesSuccess(note));
    } catch (e) {
      emit(NotesFailed(e.toString()));
    }
  }
}

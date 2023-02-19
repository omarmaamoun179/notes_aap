import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'addnote_state.dart';

class AddnoteCubit extends Cubit<AddnoteState> {
  AddnoteCubit() : super(AddnoteInitial());
  addNote(NoteModel note) async {
    emit(AddnoteLoading());
    try {
      var notesBox = await Hive.box<NoteModel>(kNoteBox);
      emit(AddnoteSuccess());
      await notesBox.add(note);
    } catch (e) {
     AddnoteFailed(errMessage:e.toString());
    }
  }
}
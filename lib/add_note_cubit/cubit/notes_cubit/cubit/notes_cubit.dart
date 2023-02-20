import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
    List<NoteModel>? note ;
  fetchAllNotes() {

      var notesBox = Hive.box<NoteModel>(kNoteBox);

  note   = notesBox.values.toList();
     
 
 
    
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/widgets/edit_note.dart';

import '../model/note_model.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel; 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: EditNote(
        noteModel: noteModel,
      ),
    );
  }
}

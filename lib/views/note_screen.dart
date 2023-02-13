import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_body.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesBody(),
    );
  }
}

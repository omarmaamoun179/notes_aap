import 'package:flutter/material.dart';
import 'package:notes_app/views/notes_body.dart';
import 'package:notes_app/views/widgets/bottom_sheet.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ) ,
                context: context,
                builder: (context) {
                  return AddNote();
                });
          },
          child: const Icon(Icons.add)),
      body: NotesBody(),
    );
  }
}



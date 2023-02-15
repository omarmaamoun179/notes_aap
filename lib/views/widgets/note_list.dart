import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NoteListviewItem extends StatelessWidget {
  const NoteListviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),

      child: ListView.builder(
        padding: EdgeInsets.zero,
      
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: NoteItem(),
          );
        },
      ),
    );
  }
}

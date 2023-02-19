import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/note_list.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector
    
    (
      onTap: () => Navigator.push(context,  MaterialPageRoute(builder: ((context) => EditNoteView()),),),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            SizedBox(
              height: 55,
            ),
            CustomAppBar(
              title: 'Notes',
              icon:Icon( Icons.search),
            ),
         
           
            Expanded(child: NoteListviewItem()),
          ],
        ),
      ),
    );
  }
}


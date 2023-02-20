import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/note_item.dart';
import 'package:notes_app/widgets/note_list.dart';

import '../add_note_cubit/cubit/notes_cubit/cubit/notes_cubit.dart';

class NotesBody extends StatefulWidget {
  const NotesBody({super.key});

  @override
  State<NotesBody> createState() => _NotesBodyState();
}

class _NotesBodyState extends State<NotesBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  NoteModel? noteModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => EditNoteView()),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(
              height: 55,
            ),
            CustomAppBar(
              title: 'Notes',
              icon: Icon(Icons.search),
            
              
            ),
         
            Expanded(
              child: NoteListviewItem(),
            ),
            
            
          ],
        ),
      ),
    );
  }
}

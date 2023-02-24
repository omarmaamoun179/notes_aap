import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) => EditNoteView(
                noteModel: noteModel,
              )),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
          color: Color(noteModel.color),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                noteModel.title,
                style: const TextStyle(color: Colors.black, fontSize: 24),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  noteModel.subtitle,
                  style: TextStyle(
                      color: Colors.black.withOpacity(.5), fontSize: 20),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    noteModel.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  },
                  icon:  const Icon(Icons.delete),
                  color: Colors.black),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(noteModel.date,
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

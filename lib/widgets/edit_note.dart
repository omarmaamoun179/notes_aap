import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/cubit/notes_cubit/cubit/notes_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.noteModel});

  final NoteModel noteModel;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 55,
          ),
          CustomAppBar(
            onPressed: () {
              widget.noteModel.title = title ?? widget.noteModel.title;
              widget.noteModel.subtitle = title ?? widget.noteModel.subtitle;
              widget.noteModel.save();
              Navigator.pop(context);
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            },
            icon: Icon(Icons.check),
            title: 'Edit Note',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.noteModel.title),
          SizedBox(
            height: 16,
          ),
          CustomTextField(
              onChanged: (value) {
                title = value;
              },
              hint: widget.noteModel.subtitle,
              maxLines: 6),
        ]),
      ),
    );
  }
}

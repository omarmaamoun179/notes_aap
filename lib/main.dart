import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/simple_bloc_observe.dart';
import 'package:notes_app/views/note_screen.dart';

void main() async {
  await Hive.initFlutter();
 Bloc.observer =  SimpleBlocObserve();
   Hive.registerAdapter(NoteModelAdapter());

  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NoteScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';

class NotesScreen extends StatelessWidget {
  const NotesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomAppBar(),
    );
  }
}

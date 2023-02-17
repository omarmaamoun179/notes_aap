import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(children: const [
          SizedBox(
            height: 55,
          ),
          CustomAppBar(
            icon: Icon(Icons.check),
            title: 'Edit Note',
          ),
          SizedBox(
            height: 12,
          ),
          CustomTextField(hint: 'Title'),
          SizedBox(
            height: 16,
          ),
          CustomTextField(hint: 'Content', maxLines: 6),
        ]),
      ),
    );
  }
}

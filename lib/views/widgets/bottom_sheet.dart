import 'package:flutter/material.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const CustomTextField(hint: 'Title'),
            const SizedBox(
              height: 15,
            ),
            const CustomTextField(
              hint: 'Content',
              maxLines: 5,
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}


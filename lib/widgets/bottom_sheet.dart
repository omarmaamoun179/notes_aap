import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_note_cubit/cubit/addnote_cubit.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/widgets/add_note_form.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

import 'custom_button.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: SingleChildScrollView(
          child: BlocConsumer<AddnoteCubit, AddnoteState>(
        listener: (context, state) {
          if (state is AddnoteSuccess) {
            return Navigator.pop(context);
          } else if (state is AddnoteFailed) {
            SnackBar(
              content: Text('failed'),
            );
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is AddnoteLoading ? true : false,
            child: const AddNoteValidate());
        },
      )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/add_note_cubit/cubit/addnote_cubit.dart';

import 'package:notes_app/widgets/add_note_form.dart';



class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddnoteCubit(),
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
          return  AbsorbPointer(
            absorbing: state is AddnoteLoading ? true : false,
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
              child:  SingleChildScrollView(child: AddNoteValidate()),
            ),
          );
        },
      ),
    );
  }
}

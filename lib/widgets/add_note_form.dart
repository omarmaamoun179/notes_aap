import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/intl.dart';
import 'package:notes_app/add_note_cubit/cubit/addnote_cubit.dart';
import 'package:notes_app/constant.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/widgets/colors_listview.dart';
import 'package:notes_app/widgets/custom_button.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteValidate extends StatefulWidget {
  const AddNoteValidate({
    Key? key,
  }) : super(key: key);

  @override
  State<AddNoteValidate> createState() => _AddNoteValidateState();
}

class _AddNoteValidateState extends State<AddNoteValidate> {
  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CustomTextField(
              onSaved: (value) {
                title = value;
              },
              hint: 'Title'),
          const SizedBox(
            height: 15,
          ),
          CustomTextField(
            onSaved: (value) {
              subTitle = value;
            },
            hint: 'Content',
            maxLines: 4,
          ),
          const SizedBox(height: 30),
         const  ColorsListView(),
         const SizedBox(height: 30),
          BlocBuilder<AddnoteCubit, AddnoteState>(
            builder: (context, state) {
              return CustomButtom(
                isLoading: state is AddnoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    var currentDate = DateTime.now();
                    var formatCurrentDate = DateFormat.yMMMd().format(currentDate);
                    var notemodel = NoteModel(
                        title: title!,
                        subtitle: subTitle!,
                        date: formatCurrentDate,
                        color: Colors.yellowAccent.value);
                    BlocProvider.of<AddnoteCubit>(context).addNote(notemodel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                  const SizedBox(height: 50);
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

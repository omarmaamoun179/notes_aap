import 'package:flutter/material.dart';
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
            maxLines: 5,
          ),
          const SizedBox(height: 50),
          CustomButtom(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

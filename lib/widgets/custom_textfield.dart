import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key, required this.hint, this.maxLines = 1, this.onSaved, this.onChanged});
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField( 
      onChanged:onChanged ,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is Required';
        } else {
          return null; 
        }
      },
      onSaved: onSaved,
      maxLines: maxLines,
      cursorColor: const Color(0xff53EBD6),
      decoration: InputDecoration(
        border: buildBorder(),
        hintText: hint,
        enabledBorder: buildBorder(),
        focusedBorder:   buildBorder( const Color(0xff53EBD6)),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) => OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white),
      );
}

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../constant.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap,  this.isLoading = false});
  final void Function()? onTap;
   final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isLoading ,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 55,
          decoration: BoxDecoration(
            color: kPrimarycolor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
            child: isLoading ? CircularProgressIndicator() : Text(
              'Add Note',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

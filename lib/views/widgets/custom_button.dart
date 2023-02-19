import 'package:flutter/material.dart';

import '../../constant.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: double.infinity,
        height: 45,
        color: (kPrimarycolor),
        child: const Center(
          child: Text(
            'Add Note',
            style: TextStyle(color: Colors.black, fontSize: 15),
          ),
        ),
      ),
    );
  }
}

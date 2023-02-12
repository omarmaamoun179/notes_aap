import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const Text(
          'Notes',
          style: TextStyle(fontSize: 24),
        ),
        Spacer(),
        Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(.05),
              borderRadius: BorderRadius.circular(16),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )),
      ],
    );
  }
}

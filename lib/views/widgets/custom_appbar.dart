import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.5),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
         // ignore: prefer_const_literals_to_create_immutables
         children: [
         const Text('Notes' , style: TextStyle(fontSize: 24),), 
         Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete),),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../constant.dart';
import '../model/note_model.dart';
import 'colors_listview.dart';

class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = kColor.indexOf(Color(widget.noteModel.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35 * 2,
      child: ListView.builder(
        itemCount: kColor.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                widget.noteModel.color = kColor[index].value;
                setState(() {});
              },
              child: ColorsItem(
                color: kColor[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}

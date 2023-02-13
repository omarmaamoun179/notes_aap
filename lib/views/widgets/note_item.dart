import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16, top: 24, bottom: 24),
      decoration: BoxDecoration(
        color: Colors.yellow[400],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter tips ',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric( vertical: 16),
              child: Text(
                'Create your note now',
                style:
                    TextStyle(color: Colors.black.withOpacity(.5), fontSize: 20),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.delete),
                color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Text('Feb 13',
                style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                )),
          ),
        ],
      ),
    );
  }
}

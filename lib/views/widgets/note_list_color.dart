import 'package:flutter/material.dart';

class NoteColor extends StatelessWidget {
  const NoteColor({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 30,
      backgroundColor: Colors.amber,
    );
  }
}

class ColorsList extends StatelessWidget {
  const ColorsList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemBuilder: (context, i) {
          return NoteColor();
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

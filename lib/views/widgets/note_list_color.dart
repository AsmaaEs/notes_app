import 'package:flutter/material.dart';

class NoteColor extends StatelessWidget {
  const NoteColor({super.key, required this.isActive, required this.noteColor});
  final bool isActive;
  final Color noteColor;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 28,
              backgroundColor: noteColor,
            ),
          )
        : CircleAvatar(
            radius: 29,
            backgroundColor: noteColor,
          );
  }
}

class ColorsList extends StatefulWidget {
  const ColorsList({super.key});

  @override
  State<ColorsList> createState() => _ColorsListState();
}

class _ColorsListState extends State<ColorsList> {
  int currentIndx = 0;
  List<Color> noteColor = [
    Colors.red,
    Colors.amber,
    Colors.blueAccent,
    Colors.purple,
    Colors.pink,
    Colors.green
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        itemBuilder: (context, i) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  currentIndx = i;
                });
              },
              child: NoteColor(
                noteColor: noteColor[i],
                isActive: currentIndx == i,
              ),
            ),
          );
        },
        itemCount: noteColor.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

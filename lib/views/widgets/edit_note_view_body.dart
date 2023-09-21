import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';
import 'package:notes_app/views/widgets/note_list_color.dart';

import '../../cubits/notes_cubit/notes_cubit.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            CustomAppBar(
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = subtitle ?? widget.note.subtitle;
//widget.note.noteColor=
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();

                Navigator.pop(context);
              },
              title: 'Edit Note',
              icon: Icons.check,
            ),
            const SizedBox(
              height: 50,
            ),
            CustomtextField(
              title: widget.note.title,
              onChanged: (val) {
                title = val;
              },
            ),
            const SizedBox(
              height: 20,
            ),
            CustomtextField(
              title: widget.note.subtitle,
              onChanged: (val) {
                subtitle = val;
              },
              maxLines: 10,
            ),
            const SizedBox(
              height: 20,
            ),
            EditColorList(note: widget.note)
          ],
        ),
      ),
    );
  }
}

class EditColorList extends StatefulWidget {
  const EditColorList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorList> createState() => _EditColorListState();
}

class _EditColorListState extends State<EditColorList> {
  late int currentIndx;
  @override
  void initState() {
    currentIndx = noteColor.indexOf(Color(widget.note.noteColor));
    super.initState();
  }

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
                currentIndx = i;
                widget.note.noteColor = noteColor[i].value;
                setState(() {});
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

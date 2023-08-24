import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomtextField(title: 'Title'),
            SizedBox(
              height: 20,
            ),
            CustomtextField(title: 'Content', maxLines: 6),
            SizedBox(
              height: 70,
            ),
            CustomButton(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}

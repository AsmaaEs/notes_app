import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_item_card.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, i) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: CustomItemCard(),
      );
    });
  }
}

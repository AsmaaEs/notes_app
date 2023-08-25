import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_app/views/edit_note_view.dart';

class CustomItemCard extends StatelessWidget {
  const CustomItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditNoteView()));
      },
      child: Container(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        decoration: BoxDecoration(
            color: Colors.yellow, borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                title: Text(
                  'Flutter tips',
                  style: TextStyle(color: Colors.black, fontSize: 26),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Text(
                    'build your app with asmaa ',
                    style: TextStyle(
                        color: Colors.black.withOpacity(.5), fontSize: 20),
                  ),
                ),
                trailing: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.trash,
                      color: Colors.black,
                      size: 25,
                    ))),
            Padding(
              padding: const EdgeInsets.only(right: 24.0, top: 20),
              child: Text(
                'may 20.2002',
                style: TextStyle(
                    color: Colors.black.withOpacity(.6), fontSize: 15),
              ),
            )
          ],
        ),
      ),
    );
    // Container(
    //   color: Colors.amber,
    //   height: 300,
    //   width: 300,
    // );
  }
}

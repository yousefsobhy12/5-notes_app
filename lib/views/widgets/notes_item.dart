import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (build) {
          return const EditNoteView();
        }));
      },
      child: Container(
        padding: const EdgeInsets.only(
          top: 16,
          bottom: 16,
          left: 8,
        ),
        decoration: BoxDecoration(
          color: const Color(0xffFFCC79),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Study with me",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              subtitle: const Padding(
                padding: EdgeInsets.only(top: 8),
                child: Text(
                  "Study with me (Introduced by Yousef Sobhy) *No music only Rain sound*",
                  style: TextStyle(
                    color: Color(0xff9A723C),
                    fontSize: 14,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 8, right: 16),
              child: Text(
                "21May, 2024",
                style: TextStyle(
                  color: Color(0xff9A723C),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

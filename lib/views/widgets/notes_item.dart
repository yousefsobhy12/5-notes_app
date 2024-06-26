import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});
  final NoteModel note;
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
          color: Color(note.color),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  note.subTitle,
                  style: const TextStyle(
                    color: Color(0xff9A723C),
                    fontSize: 14,
                  ),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    showDialogConfirmation(context);
                  },
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.black,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, right: 16),
              child: Text(
                note.date,
                style: const TextStyle(
                  color: Color(0xff9A723C),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<dynamic> showDialogConfirmation(BuildContext context) {
    return showDialog(
        context: context,
        builder: (builder) {
          return AlertDialog(
            title: const Text("Alert"),
            content: const Text(
              "Do you want to confirm deletion?",
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Cancel")),
              TextButton(
                  onPressed: () {
                    note.delete();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.of(context).pop();
                  },
                  child: const Text("Confirm"))
            ],
          );
        });
  }
}

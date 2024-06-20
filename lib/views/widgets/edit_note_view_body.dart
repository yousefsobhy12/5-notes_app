import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/custom_textfield.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 24,
          ),
          CustomAppbar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 24,
          ),
          CustomTextField(
            hint: "Title",
            maxLines: 1,
          ),
          SizedBox(
            height: 10,
          ),
          CustomTextField(
            hint: "Content",
            maxLines: 6,
          ),
        ],
      ),
    );
  }
}

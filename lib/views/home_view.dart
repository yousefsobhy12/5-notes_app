import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_appbar.dart';
import 'package:notes_app/views/widgets/notes_item.dart';
import 'package:notes_app/views/widgets/notes_listview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            CustomAppbar(),
            Expanded(
              child: NotesListview(),
            )
          ],
        ),
      ),
    );
  }
}



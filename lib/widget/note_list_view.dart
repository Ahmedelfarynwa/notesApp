import 'package:flutter/material.dart';
import 'package:notes_app/widget/note_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: ListView.builder(itemBuilder: (BuildContext context, int index) {return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: NoteItem(),
      ); },),
    );
  }
}
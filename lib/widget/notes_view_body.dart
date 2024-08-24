import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubit/notesCubit/notes_cubit_cubit.dart';
import 'package:notes_app/widget/note_list_view.dart';

import 'custom_app-bar.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(children: [
        SizedBox(
          height: 50,
        ),
        CustomAppBar(
          title: 'Notes ',
          icon: Icons.search,
        ),
        Expanded(child: NoteListView())
      ]),
    );
  }
}

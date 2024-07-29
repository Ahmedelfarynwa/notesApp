import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/model/note_model.dart';
import 'package:notes_app/views/home_view.dart';

void main() async {
  await Hive.initFlutter();

  await Hive.openBox('NotesBox');
  Hive.registerAdapter(NoteModelAdapter());
  runApp(MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
    child: const NoteApps()));
}

class NoteApps extends StatelessWidget {
  const NoteApps({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.dark,
          useMaterial3: true,
          fontFamily: 'Poppins',
        ),
        home: const NotesView(),
      
    );
  }
}

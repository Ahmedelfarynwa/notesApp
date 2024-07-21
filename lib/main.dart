import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'views/home_view.dart';

void main() async {
  await Hive.initFlutter();
  
  await Hive.openBox('NotesBox');
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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

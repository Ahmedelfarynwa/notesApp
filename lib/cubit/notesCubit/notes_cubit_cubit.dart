import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../model/note_model.dart';

part 'notes_cubit_state.dart';

@immutable
// ignore: must_be_immutable
class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<NoteModel>('NotesBox');
     notes = notesBox.values.toList();
  }
}

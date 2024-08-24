import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import '../../model/note_model.dart';

part 'add_note_state.dart';

@immutable
// ignore: must_be_immutable
class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color? color ;

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    note.color = color!.value;
    try {
      var notesBox = Hive.box<NoteModel>('NotesBox');
      await notesBox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(e.toString()));
    }
  }
}

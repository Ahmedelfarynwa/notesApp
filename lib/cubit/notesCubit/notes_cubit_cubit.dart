import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';

import '../../model/note_model.dart';

part 'notes_cubit_state.dart';

@immutable
// ignore: must_be_immutable
class NotesCubit extends Cubit<NotesCubitState> {
  NotesCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>('NotesBox');
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesCubitSuccess(notes));
      } catch (e) {
      emit(NotesCubitFailure(e.toString()));
    }
  }
}

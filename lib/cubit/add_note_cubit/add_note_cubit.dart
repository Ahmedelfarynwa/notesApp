import 'package:bloc/bloc.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit():super(AddNoteCubit() as AddNoteState) 
  addNote(NoteModel note) {

  }
}

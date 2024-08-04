part of 'notes_cubit_cubit.dart';

@immutable
abstract class  NotesCubitState{}


final class NotesCubitInitial extends NotesCubitState {}

class NotesCubitLoading extends NotesCubitState {}

class NotesCubitSuccess extends NotesCubitState {
final  List<NoteModel> notes;

  NotesCubitSuccess(this.notes);
}

 class NotesCubitFailure extends NotesCubitState {
  final String erroMessage;

  NotesCubitFailure(this.erroMessage);
}

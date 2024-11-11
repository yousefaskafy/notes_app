part of 'add_notes_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteloading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNotefailure extends AddNoteState {
  final String errMessage;
  AddNotefailure(this.errMessage);
}

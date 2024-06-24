part of 'add_note_cubit.dart';

sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccesed extends AddNoteState {}

final class AddNotefailed extends AddNoteState {
  final String errorMessage;

  AddNotefailed(this.errorMessage);
}

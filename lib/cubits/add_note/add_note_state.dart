part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccesed extends AddNoteState {}

final class AddNotefailed extends AddNoteState {
  late final String errorMessage;
}

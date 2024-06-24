part of 'notes_cubit_cubit.dart';

@immutable
sealed class NotesCubitState {}

final class NotesCubitInitial extends NotesCubitState {}

final class NotesCubitLoading extends NotesCubitState {}

final class NotesCubitSuccessed extends NotesCubitState {
  final List<NoteModel> notes;

  NotesCubitSuccessed(this.notes);
}

final class NotesCubitFailed extends NotesCubitState {
  final String errorMessage;

  NotesCubitFailed(this.errorMessage);
}

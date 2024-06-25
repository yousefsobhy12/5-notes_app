import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  fetchAllNotes() {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);
      emit(NotesCubitSuccessed(notesBox.values.toList()));
    } catch (e) {
      emit(NotesCubitFailed(e.toString()));
    }
  }
}

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/model/note_model.dart';

import '../../constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes() {
    var noteBox = Hive.box<NoteModel>(kNotesBox);

    List<NoteModel> notes = noteBox.values.toList();
    emit(NotesSuccess(notes));
  }
}

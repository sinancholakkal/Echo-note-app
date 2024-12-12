import 'package:bloc/bloc.dart';
import 'package:echo_note_app/repository/edit_repository.dart';
import 'package:echo_note_app/repository/get_repository.dart';
import 'package:meta/meta.dart';

part 'edit_event.dart';
part 'edit_state.dart';

class EditBloc extends Bloc<EditEvent, EditState> {
  EditBloc() : super(EditInitial()) {
    on<EditNoteEvent>((event, emit) async{
      await editNoteRepo(event.id,event.title, event.des);
      await getNoteFromApi();
    });
  }
}

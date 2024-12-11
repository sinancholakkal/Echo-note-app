import 'package:bloc/bloc.dart';
import 'package:echo_note_app/repository/delete_repository.dart';
import 'package:meta/meta.dart';

part 'delete_event.dart';
part 'delete_state.dart';

class DeleteBloc extends Bloc<DeleteEvent, DeleteState> {
  DeleteBloc() : super(DeleteInitial()) {
    on<DeleteNoteEvent>((event, emit) {
      emit(DeleteInitial());
      deleteNoteRepo(event.id);
    });
  }
}

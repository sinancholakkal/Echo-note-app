import 'package:bloc/bloc.dart';
import 'package:echo_note_app/repository/post_repository.dart';
import 'package:meta/meta.dart';

part 'post_note_event.dart';
part 'post_note_state.dart';

class PostNoteBloc extends Bloc<PostNoteEvent, PostNoteState> {
  PostNoteBloc() : super(PostNoteInitial()) {
    on<PostNoteEventToApi>((event, emit) {
      emit(PostNoteInitial());
      postNoteRepo(event.title, event.descr);
    });
  }
}

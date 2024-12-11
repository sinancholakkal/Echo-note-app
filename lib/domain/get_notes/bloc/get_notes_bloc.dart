import 'package:bloc/bloc.dart';
import 'package:echo_note_app/domain/get_notes/get_note_model/get_note_model.dart';
import 'package:echo_note_app/repository/get_repository.dart';
import 'package:meta/meta.dart';

part 'get_notes_event.dart';
part 'get_notes_state.dart';

class GetNotesBloc extends Bloc<GetNotesEvent, GetNotesState> {
  GetNotesBloc() : super(GetNotesInitial()) {
    on<SendGetRequistEvent>((event, emit)async {
      emit(GetLoadingState());

      try{
        List<GetNoteModel>result = await getNoteFromApi();
        emit(GetLoadedState(result: result));
      }catch(e){
        emit(GetErrorState(msg: e.toString()));
      }
    });
  }
}

part of 'get_notes_bloc.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}

class GetLoadingState extends GetNotesState{}

class GetLoadedState extends GetNotesState{
  List<GetNoteModel> result =[];
  GetLoadedState({required this.result});
}

class GetErrorState extends GetNotesState{
  final String msg;
  GetErrorState({required this.msg});
}

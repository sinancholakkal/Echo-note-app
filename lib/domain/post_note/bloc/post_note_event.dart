part of 'post_note_bloc.dart';

@immutable
sealed class PostNoteEvent {}

class PostNoteEventToApi extends PostNoteEvent{
  String title;
  String descr;
  PostNoteEventToApi({required this.title , required this.descr});
}
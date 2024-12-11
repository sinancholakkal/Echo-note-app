part of 'delete_bloc.dart';

@immutable
sealed class DeleteEvent {}

class DeleteNoteEvent extends DeleteEvent{
  String id;
  DeleteNoteEvent({required this.id});
}
part of 'edit_bloc.dart';

@immutable
sealed class EditEvent {}

class EditNoteEvent extends EditEvent{
  String id;
  String title;
  String des;
  EditNoteEvent({required this.id,required this.title,required this.des});
}

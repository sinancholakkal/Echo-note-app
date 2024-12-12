import 'package:echo_note_app/domain/delete_note/bloc/delete_bloc.dart';
import 'package:echo_note_app/domain/get_notes/bloc/get_notes_bloc.dart';
import 'package:echo_note_app/domain/get_notes/get_note_model/get_note_model.dart';
import 'package:echo_note_app/presentation/view_content/view_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popover/popover.dart';

Future<void> delete(String id, BuildContext context) async {
  BlocProvider.of<DeleteBloc>(context).add(DeleteNoteEvent(id: id));
}

Future<Object?> longPressMenuItem(BuildContext context, GetNoteModel note) {
  return showPopover(
    context: context,
    bodyBuilder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async {
              //await delete(id, context);
              context
                  .read<DeleteBloc>()
                  .add(DeleteNoteEvent(id: note.id.toString()));
              BlocProvider.of<GetNotesBloc>(context).add(SendGetRequistEvent());
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              width: 200,
              color: Colors.white,
              child: const Center(child: Text("Delete")),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => ScreenAddEditNote(
                        type: ActionType.editNote,
                        title: note.title.toString(),
                        content: note.description.toString(),
                        id: note.id.toString(),
                      )));
                      
            },
            child: Container(
            height: 50,
            width: 200,
            color: Colors.white,
            child: const Center(child: Text("Edit")),
          ),
          ),
          
        ],
      );
    },
  );
}

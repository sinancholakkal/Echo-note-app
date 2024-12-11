import 'package:echo_note_app/domain/delete_note/bloc/delete_bloc.dart';
import 'package:echo_note_app/domain/get_notes/bloc/get_notes_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:popover/popover.dart';

Future<void>delete(String id,BuildContext context)async{
  BlocProvider.of<DeleteBloc>(context).add(DeleteNoteEvent(id: id));
}
Future<Object?> longPressMenuItem(BuildContext context, String id) {
  return showPopover(
    context: context,
    bodyBuilder: (context) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () async{
              //await delete(id, context);
              context.read<DeleteBloc>().add(DeleteNoteEvent(id: id));
              BlocProvider.of<GetNotesBloc>(context)
                    .add(SendGetRequistEvent());
              Navigator.of(context).pop();
            },
            child: Container(
              height: 50,
              width: 200,
              color: Colors.white,
              child: const Center(child: Text("Delete")),
            ),
          ),
          const SizedBox(
            width: 200,
            child: Divider(),
          ),
          Container(
            height: 50,
            width: 200,
            color: Colors.white,
            child: const Center(child: Text("Edit")),
          )
        ],
      );
    },
  );
}

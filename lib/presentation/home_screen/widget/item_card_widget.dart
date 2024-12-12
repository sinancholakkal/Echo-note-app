
import 'package:echo_note_app/domain/get_notes/get_note_model/get_note_model.dart';
import 'package:echo_note_app/presentation/home_screen/widget/longpress_popup_item.dart';
import 'package:echo_note_app/presentation/view_content/view_content.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final int index;
  final GetNoteModel note;
  ItemCard({super.key, required this.index,required this.note});

  final List<Color> lightColors = [
    Colors.pink.withOpacity(0.5),
    Colors.orange.withOpacity(0.5),
    Colors.pinkAccent.withOpacity(0.5),
    Colors.teal.withOpacity(0.5),
    Colors.lightBlue.withOpacity(0.5),
    Colors.purple..withOpacity(0.3),
    Colors.yellow.withOpacity(0.5),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () {
        longPressMenuItem(context,note);
      },
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                ScreenAddEditNote(type: ActionType.editNote,title: note.title.toString(),content:note.description.toString(),id: note.id.toString(),)));
      },
      child: Transform.rotate(
        angle: -0.1,
        child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 10,
                blurRadius: 10,
                offset: Offset(10, 10),
              ),
            ],
            color: lightColors[index % lightColors.length],
            border: Border.all(),
            borderRadius: BorderRadius.circular(20),
          ),
          child:  Column(
            children: [
              Text(
                note.title.toString(),
                style: TextStyle(
                  fontSize: 20,
                  height: 0,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                note.description.toString(),
                style: TextStyle(color: Colors.black45),
                maxLines: 5,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

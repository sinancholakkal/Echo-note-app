import 'package:flutter/material.dart';

enum ActionType{
  addNote,
  editNote
}
class ScreenAddEditNote extends StatelessWidget {
  final ActionType type;
  String? title;
  String? content;
   ScreenAddEditNote({super.key,required this.type,this.title,this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(type.name == "addNote" ? "Add Note" : "Edit Note"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 70,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: type.name == "addNote"? "Title" : "",
                            hintStyle: TextStyle(fontSize: 30),
                            border: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none
                          ),
                        ),
                      ),
                      TextFormField(
                        maxLines: 20,
                        decoration: InputDecoration(
                          hintText: type.name == "addNote"? "Type here..." : "",
                          border: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Expanded(child: SizedBox(
                  child: ElevatedButton(onPressed: (){}, child: Text("Cancel")),
                )),
                Expanded(child: SizedBox(
                  child: ElevatedButton(onPressed: (){}, child: Text("Save")),
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
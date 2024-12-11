
import 'dart:convert';
import 'package:echo_note_app/domain/get_notes/get_note_model/get_note_model.dart';
import "package:http/http.dart" as http;

Future<List<GetNoteModel>>getNoteFromApi()async{
  final response = await http.get(Uri.parse("https://api.nstack.in/v1/todos?page=1&limit=10"));
  Map<String,dynamic> responseBody = await jsonDecode(response.body);
  final List items = responseBody["items"];
  List<GetNoteModel> resultList =[];
  for(int i=0;i<items.length;i++){
    final result = GetNoteModel.fromJson(items[i]);
    resultList.add(result);
  }
  return resultList;
}
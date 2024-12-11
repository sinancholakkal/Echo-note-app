import "dart:convert";

import "package:http/http.dart" as http;

Future<void> postNoteRepo(String title, String descr) async {
  print(title);
  print(descr);
  final Map<String, dynamic> mapValue = {
    "title": title,
    "description": descr,
    "is_completed": true
  };
  final response = await http.post(Uri.parse("https://api.nstack.in/v1/todos"),
      body: jsonEncode(mapValue),
      headers: {'Content-Type': 'application/json'});
      try{
        print(response.statusCode);
        response.statusCode >=200 && response.statusCode<300? print(response.body) : print("Some error");
      }catch(e){
        throw Exception(e);
      }
}


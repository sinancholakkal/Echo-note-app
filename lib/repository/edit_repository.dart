import 'dart:convert';

import 'package:http/http.dart' as http;

Future<void> editNoteRepo(String id, String title, String des) async {
  final body = {'title': title, 'description': des, 'is_completed': false};
  final response = await http.put(
      Uri.parse("https://api.nstack.in/v1/todos/$id"),
      body: jsonEncode(body),
      headers: {'Content-Type': 'application/json'});
}

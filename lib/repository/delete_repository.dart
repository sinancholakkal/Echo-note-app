import 'package:http/http.dart' as http;

Future<void>deleteNoteRepo(String id)async{
  
  try{
    final response = await http.delete(Uri.parse("https://api.nstack.in/v1/todos/$id"));
    response.statusCode<300 && response.statusCode>=200 ? print(response.body) : print("somthing wrong");
  }catch(e){
    throw Exception(e);
  }
}
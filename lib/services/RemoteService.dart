import '../Models/todo.dart';
import 'package:http/http.dart' as http;

class RemoteService {
  Future<List<ToDo>?> getToDos() async {
    var client = http.Client();

    var uri = Uri.parse('https://jsonplaceholder.typicode.com/todos?_limit=5');
    var response = await  client.get(uri);
    if(response.statusCode == 200){
      var json = response.body;
      return toDoFromJson(json);
    }
  }

}

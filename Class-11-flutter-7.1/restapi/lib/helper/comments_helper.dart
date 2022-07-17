import 'package:restapi/model/comments.dart';
import 'package:http/http.dart' as http;

class Comments_helper {
  Future<List<Comments>?> getComments() async {
    var response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/comments'));

    if (response.statusCode == 200) {
      var json = response.body;
      return commentsFromJson(json);
    }
  }
}

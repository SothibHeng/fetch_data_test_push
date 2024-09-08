import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/post.dart';

class ApiService {

  // asynchronous function
  Future<List<Post>> fetchData() async {

    final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

    // set condition
    if (response.statusCode ==200) {

      // decode json response
      List<dynamic> data = jsonDecode(response.body);

      print('Data fetched successfully: ${data.length} items');

      // convert list map to list of post object
      return data.map( (json) => Post.fromJson(json) ).toList();

    } else {
      throw Exception('Failed fetching data!');
    }

  }

}
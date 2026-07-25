import 'dart:convert';

import 'package:http/http.dart' as http;


class ApiService{


 Future<List<dynamic>> fetchItems() async{


 final response =
 await http.get(

 Uri.parse(
 "https://jsonplaceholder.typicode.com/posts"
 )

 );


 if(response.statusCode==200){

 return jsonDecode(response.body);

 }


 throw Exception(
 "API Error"
 );


 }


}

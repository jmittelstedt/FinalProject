import 'package:flutter/material.dart';

import '../services/api_service.dart';



class ApiScreen extends StatefulWidget {


const ApiScreen({super.key});


@override

State<ApiScreen> createState()
=>
_ApiScreenState();


}



class _ApiScreenState extends State<ApiScreen>{


final ApiService api =
ApiService();



List<dynamic> items=[];



@override

void initState(){

super.initState();

loadData();

}



void loadData() async{


items =
await api.fetchItems();


setState((){});


}



@override

Widget build(BuildContext context){


return Scaffold(


appBar:

AppBar(

title:
const Text("API Data")

),



body:

ListView.builder(


itemCount:
items.length,


itemBuilder:(context,index){


return ListTile(


title:

Text(

items[index]["title"]

),



subtitle:

Text(

items[index]["body"]

),


);


}


)


);


}


}

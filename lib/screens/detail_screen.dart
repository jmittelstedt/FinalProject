import 'package:flutter/material.dart';


class DetailScreen extends StatelessWidget {

 const DetailScreen({super.key});


 @override

 Widget build(BuildContext context){


 return Scaffold(

 appBar:

 AppBar(

 title:
 const Text("Details")

 ),


 body:

 const Padding(

 padding:
 EdgeInsets.all(20),


 child:

 Column(

 children:[


 Text(

 "Item Details",

 style:
 TextStyle(
 fontSize:24
 ),

 ),


 SizedBox(height:20),


 Text(

 "This screen displays detailed information about the selected item."

 )


 ]

 )


 )


 );


 }


}

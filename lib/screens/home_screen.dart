import 'package:flutter/material.dart';

import 'detail_screen.dart';
import 'settings_screen.dart';

import 'api_screen.dart';
import 'notification_screen.dart';


class HomeScreen extends StatelessWidget {

 const HomeScreen({super.key});


 @override
 Widget build(BuildContext context){


 return Scaffold(


 appBar:AppBar(

 title:

 Row(

 children:[

 Image.asset(

 "assets/logo.png",

 height:40,

 ),


 const SizedBox(width:10),


 const Text("My App")

 ]

 ),

 actions:[


 IconButton(

 icon:
 const Icon(Icons.settings),

 onPressed:(){

 Navigator.push(

 context,

 MaterialPageRoute(

 builder:
 (context)=>SettingsScreen()

 )

 );

 }

 )


 ]

 ),



 body:

 ListView(

 children:[


 ListTile(

 title:
 const Text("Sample Item"),

 subtitle:
 const Text("Tap to view details"),


 onTap:(){

 Navigator.push(

 context,

 MaterialPageRoute(

 builder:
 (context)=>const DetailScreen()

 )

 );

 }

 )


 ]

 )


 );


 }

}

Column(

children:[


ElevatedButton(

onPressed:(){

Navigator.push(

context,

MaterialPageRoute(

builder:(context)=>const ApiScreen()

)

);

},

child:

const Text("View API Data")

),



ElevatedButton(

onPressed:(){

Navigator.push(

context,

MaterialPageRoute(

builder:(context)=>NotificationScreen()

)

);

},

child:

const Text("Notifications")

)

]

)

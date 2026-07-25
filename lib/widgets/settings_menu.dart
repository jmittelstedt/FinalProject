import 'package:flutter/material.dart';


class SettingsMenu extends StatelessWidget{

 const SettingsMenu({super.key});


 @override

 Widget build(BuildContext context){


 return Drawer(

 child:

 ListView(

 children:[


 const DrawerHeader(

 child:

 Text(
 "Settings Menu"
 )

 ),



 ListTile(

 leading:
 const Icon(Icons.settings),

 title:
 const Text("Settings"),

 )


 ]

 )


 );


 }


}

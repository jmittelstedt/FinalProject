import 'package:flutter/material.dart';

import 'home_screen.dart';
import 'signup_screen.dart';


class LoginScreen extends StatefulWidget {

 const LoginScreen({super.key});


 @override
 State<LoginScreen> createState()=>_LoginScreenState();

}


class _LoginScreenState extends State<LoginScreen>{


 final emailController=TextEditingController();

 final passwordController=TextEditingController();


 String error="";


 void login(){


 if(emailController.text==""
 ||
 passwordController.text==""){

 setState((){

 error="Invalid email or password";

 });

 return;

 }


 Navigator.pushReplacement(

 context,

 MaterialPageRoute(

 builder:(context)=>HomeScreen()

 )

 );


 }



 @override
 Widget build(BuildContext context){

 return Scaffold(


 appBar:
 AppBar(
 title:
 const Text("Login")
 ),


 body:
 Padding(

 padding:
 const EdgeInsets.all(20),


 child:
 Column(

 children:[


 TextField(

 controller:
 emailController,

 decoration:
 const InputDecoration(
 labelText:"Email"
 ),

 ),



 TextField(

 controller:
 passwordController,

 obscureText:true,

 decoration:
 const InputDecoration(
 labelText:"Password"
 ),

 ),



 ElevatedButton(

 onPressed:
 login,

 child:
 const Text("Login"),

 ),


 Text(
 error,
 style:
 const TextStyle(color:Colors.red),
 ),



 TextButton(

 onPressed:(){

 Navigator.push(

 context,

 MaterialPageRoute(

 builder:(context)=>const SignupScreen()

 )

 );

 },


 child:
 const Text("Sign Up")

 )


 ]

 )

 )

 );


 }


}

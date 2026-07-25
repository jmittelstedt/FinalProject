import 'package:flutter/material.dart';
import 'login_screen.dart';


class SignupScreen extends StatefulWidget {

 const SignupScreen({super.key});


 @override
 State<SignupScreen> createState() => _SignupScreenState();

}


class _SignupScreenState extends State<SignupScreen>{

 final usernameController = TextEditingController();
 final emailController = TextEditingController();
 final passwordController = TextEditingController();


 String errorMessage = "";


 void signup(){

 if(usernameController.text.isEmpty ||
    emailController.text.isEmpty ||
    passwordController.text.isEmpty){

 setState((){

 errorMessage="Please complete all fields";

 });

 return;

 }


 Navigator.pushReplacement(

 context,

 MaterialPageRoute(
 builder:(context)=>LoginScreen()
 )

 );

 }



 @override
 Widget build(BuildContext context){

 return Scaffold(

 appBar:AppBar(
 title:const Text("Create Account"),
 ),


 body:Padding(

 padding:const EdgeInsets.all(20),

 child:Column(

 children:[


 TextField(

 controller:usernameController,

 decoration:
 const InputDecoration(
 labelText:"Username"
 ),

 ),


 TextField(

 controller:emailController,

 decoration:
 const InputDecoration(
 labelText:"Email"
 ),

 ),


 TextField(

 controller:passwordController,

 obscureText:true,

 decoration:
 const InputDecoration(
 labelText:"Password"
 ),

 ),


 const SizedBox(height:20),


 ElevatedButton(

 onPressed:signup,

 child:
 const Text("Sign Up"),

 ),


 Text(
 errorMessage,
 style:
 const TextStyle(color:Colors.red),
 ),


 TextButton(

 onPressed:(){

 Navigator.push(
 context,
 MaterialPageRoute(
 builder:(context)=>LoginScreen()
 )
 );

 },

 child:
 const Text("Already have an account? Login")

 )


 ]

 )

 )

 );

 }

}

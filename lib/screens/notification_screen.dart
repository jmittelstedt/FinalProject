import 'package:flutter/material.dart';

import '../services/notification_service.dart';


class NotificationScreen extends StatelessWidget {


NotificationScreen({super.key});


final NotificationService service =
NotificationService();



@override
Widget build(BuildContext context){


return Scaffold(


appBar:

AppBar(

title:
const Text("Notifications")

),



body:

Center(


child:

ElevatedButton(


onPressed:() async{


await service.initialize();


await service.showNotification();


},


child:

const Text(
"Send Test Notification"
)


)


)


);


}


}

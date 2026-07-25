import 'package:flutter_local_notifications/flutter_local_notifications.dart';


class NotificationService {


final FlutterLocalNotificationsPlugin notifications =
FlutterLocalNotificationsPlugin();



Future<void> initialize() async {


const AndroidInitializationSettings androidSettings =
AndroidInitializationSettings('@mipmap/ic_launcher');


const InitializationSettings settings =
InitializationSettings(

android: androidSettings,

);


await notifications.initialize(settings);


}



Future<void> showNotification() async {


const AndroidNotificationDetails androidDetails =
AndroidNotificationDetails(

'reminder_channel',

'Reminders',

channelDescription:
'Application reminder notifications',

importance:
Importance.high,

priority:
Priority.high,

);



const NotificationDetails details =
NotificationDetails(

android: androidDetails,

);



await notifications.show(

0,

'Reminder',

'Your scheduled reminder has arrived.',

details,

);


}



}

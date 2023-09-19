import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_main/views/add_new_course.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_storage/get_storage.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key, this.user});
  final User? user;
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  // void initState() {
  //   super.initState();
  //   // TODO: implement initState
  //   final box = GetStorage();
  //   box.remove('id');
  //   print('init state called');

  //   // Forground state
  //   FirebaseMessaging.instance.getInitialMessage();
  //   FirebaseMessaging.onMessage.listen((message) {
  //     if (message.notification != null) {
  //       print(message.notification!.title);
  //       print(message.notification!.body);
  //     }
  //   });

  //   //app is opened but not terminated
  //   FirebaseMessaging.onMessageOpenedApp.listen((message) {
  //     if (message.notification != null) {
  //       print(message.notification!.title);
  //       print(message.notification!.body);
  //       print(message.data['path']);
  //       Navigator.pushNamed(context, message.data['path']);
  //     }
  //   });

  //   //when app is terminated
  //   FirebaseMessaging.instance.getInitialMessage().then((message) => {
  //         if (message != null)
  //           {
  //             print(message.notification!.title),
  //             print(message.notification!.body),
  //             print(message.data['path'])
  //           }
  //       });
  // }

  @override
  Widget build(BuildContext context) {
    addNewCourse() {
      return showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return AddNewCourse();
          });
    }

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: Text('Courses'),
            centerTitle: true,
            backgroundColor: Colors.amber,
            actions: [
              IconButton(
                  onPressed: () {
                    addNewCourse();
                  },
                  icon: Icon(Icons.add))
            ],
          ),
          body: Center()
          // Center(
          //     child:
          //     Text('Home Screen'
          //         // widget.user!.phoneNumber.toString()
          //         )),
          ),
    );
  }
}

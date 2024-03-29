import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_main/views/add_new_course.dart';
import 'package:firebase_main/views/update_course.dart';
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

    final Stream<QuerySnapshot> _courseStream =
        FirebaseFirestore.instance.collection('courses').snapshots();

    Future<void> deleteCourse(selectedDocument) {
      return FirebaseFirestore.instance
          .collection('courses')
          .doc(selectedDocument)
          .delete()
          .then((value) => print('Course has been deleted'))
          .catchError((error) => print(error));
    }

    Future<void> update(selectedDocumentID, title, description, img) {
      return showModalBottomSheet(
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return updateCourse(selectedDocumentID, title, description, img);
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
          body: StreamBuilder<QuerySnapshot>(
            stream: _courseStream,
            builder:
                (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (snapshot.hasError) {
                return Center(child: const Text('Something went wrong'));
              }

              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return ListView(
                children: snapshot.data!.docs
                    .map((DocumentSnapshot document) {
                      Map<String, dynamic> data =
                          document.data()! as Map<String, dynamic>;
                      return Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Stack(
                          children: [
                            Container(
                              height: 200,
                              child: Card(
                                child: Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Expanded(
                                          child: Container(
                                              width: double.maxFinite,
                                              child: Image.network(
                                                data['img'],
                                                fit: BoxFit.cover,
                                              ))),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        data['course_name'],
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 20),
                                      ),
                                      Text(data['course_details'])
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                                right: 0,
                                child: Card(
                                  child: Container(
                                    width: 120,
                                    height: 60,
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          IconButton(
                                              onPressed: () {
                                                update(
                                                    document.id,
                                                    data['course_name'],
                                                    data['course_details'],
                                                    data['img']);
                                              },
                                              icon: Icon(
                                                Icons.edit,
                                                color: Colors.amber,
                                              )),
                                          IconButton(
                                              onPressed: () {
                                                deleteCourse(document.id);
                                              },
                                              icon: Icon(
                                                Icons.remove_circle,
                                                color: Colors.red,
                                              ))
                                        ]),
                                  ),
                                ))
                          ],
                        ),
                      );
                    })
                    .toList()
                    .cast(),
              );
            },
          )
          // Center(
          //     child:
          //     Text('Home Screen'
          //         // widget.user!.phoneNumber.toString()
          //
          //         )),
          ),
    );
  }
}

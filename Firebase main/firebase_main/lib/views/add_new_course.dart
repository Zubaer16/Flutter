import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class AddNewCourse extends StatefulWidget {
  const AddNewCourse({super.key});

  @override
  State<AddNewCourse> createState() => _AddNewCourseState();
}

class _AddNewCourseState extends State<AddNewCourse> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  XFile? courseImage;
  String? imageUrl;
  chooseImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    courseImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  writeData() async {
    File imgFile = File(courseImage!.path);
    FirebaseStorage storage = FirebaseStorage.instance;
    UploadTask uploadTask =
        storage.ref('images').child(courseImage!.name).putFile(imgFile);
    TaskSnapshot snapshot = await uploadTask;
    imageUrl = await snapshot.ref.getDownloadURL();
    print(imageUrl);
    CollectionReference course =
        FirebaseFirestore.instance.collection('courses');

    course.add({
      'course_name': _titleController.text,
      'course_details': _descriptionController.text,
      'img': imageUrl
    });
    print('Successfully added');
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30), topRight: Radius.circular(30))),
      child: Padding(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          children: [
            TextField(
              controller: _titleController,
              decoration: InputDecoration(hintText: 'Enter course title'),
            ),
            TextField(
              controller: _descriptionController,
              decoration: InputDecoration(hintText: 'Enter course details'),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: Container(
              child: Center(
                  child: courseImage == null
                      ? Material(
                          child: IconButton(
                            onPressed: () {
                              chooseImageFromGallery();
                            },
                            icon: Icon(Icons.photo),
                          ),
                        )
                      : Image.file(
                          File(courseImage!.path),
                          fit: BoxFit.cover,
                        )),
            )),
            ElevatedButton(
              onPressed: () {
                writeData();
              },
              child: Text('Add new course'),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}

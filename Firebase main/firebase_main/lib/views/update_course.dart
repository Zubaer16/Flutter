import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class updateCourse extends StatefulWidget {
  updateCourse(
      this.documentId, this.courseTitle, this.courseDetails, this.courseImg);

  String documentId;
  String courseTitle;
  String courseDetails;
  String courseImg;

  @override
  State<updateCourse> createState() => _updateCourseState();
}

class _updateCourseState extends State<updateCourse> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  XFile? courseImage;
  String? imageUrl;
  chooseImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    courseImage = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  updateData(selectedDocument) async {
    if (courseImage == null) {
      CollectionReference course =
          FirebaseFirestore.instance.collection('courses');

      course.doc(selectedDocument).update({
        'course_name': _titleController.text,
        'course_details': _descriptionController.text,
        'img': widget.courseImg
      });
      print('null');
      Navigator.pop(context);
    } else {
      File imgFile = File(courseImage!.path);
      FirebaseStorage storage = FirebaseStorage.instance;
      UploadTask uploadTask =
          storage.ref('images').child(courseImage!.name).putFile(imgFile);
      TaskSnapshot snapshot = await uploadTask;
      imageUrl = await snapshot.ref.getDownloadURL();
      print(imageUrl);
      CollectionReference course =
          FirebaseFirestore.instance.collection('courses');

      course.doc(selectedDocument).update({
        'course_name': _titleController.text,
        'course_details': _descriptionController.text,
        'img': imageUrl
      });
      print('not null');
      Navigator.pop(context);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _titleController.text = widget.courseTitle;
    _descriptionController.text = widget.courseDetails;
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
                      ? Stack(
                          children: [
                            Image.network(
                              widget.courseImg,
                              fit: BoxFit.cover,
                            ),
                            CircleAvatar(
                              child: IconButton(
                                onPressed: () {
                                  chooseImageFromGallery();
                                },
                                icon: Icon(Icons.photo),
                              ),
                            )
                          ],
                        )
                      : Image.file(
                          File(courseImage!.path),
                          fit: BoxFit.cover,
                        )),
            )),
            ElevatedButton(
              onPressed: () {
                updateData(widget.documentId);
              },
              child: Text('Update'),
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

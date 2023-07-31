import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  List<File> selectedImages = [];
  final picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    // display image selected from gallery
    return Scaffold(
      appBar: AppBar(
        title: const Text('Multiple Images Select'),
        backgroundColor: Colors.green,
        actions: const [],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green)),
              child: const Text('Select Image from Gallery and Camera'),
              onPressed: () {
                getImages();
              },
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 18.0),
              child: Text(
                "GFG",
                textScaleFactor: 3,
                style: TextStyle(color: Colors.green),
              ),
            ),
            Expanded(
              child: SizedBox(
                width: 300.0,
                child: selectedImages.isEmpty
                    ? const Center(child: Text('Sorry nothing selected!!'))
                    : GridView.builder(
                        itemCount: selectedImages.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3),
                        itemBuilder: (BuildContext context, int index) {
                          return Center(
                              child: kIsWeb
                                  ? Image.network(selectedImages[index].path)
                                  : Image.file(selectedImages[index]));
                        },
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future getImages() async {
    final pickedFile = await picker.pickMultiImage(
        imageQuality: 100, maxHeight: 1000, maxWidth: 1000);
    List<XFile> xfilePick = pickedFile;

    setState(
      () {
        if (xfilePick.isNotEmpty) {
          for (var i = 0; i < xfilePick.length; i++) {
            selectedImages.add(File(xfilePick[i].path));
          }
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Nothing is selected')));
        }
      },
    );
  }
}

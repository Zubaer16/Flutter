import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:peervendors/models/choose_image_model.dart';

class ChooseImageProvider extends ChangeNotifier {
  final List<ChooseImageModel> _pickedImages = [];

  List<File?> get getPickedImage {
    return _pickedImages.map((e) => e.image).toList();
  }

  set setPickedImage(File image) {
    final chooseImageModel = ChooseImageModel(image: image);
    _pickedImages.add(chooseImageModel);
    notifyListeners();
  }
}

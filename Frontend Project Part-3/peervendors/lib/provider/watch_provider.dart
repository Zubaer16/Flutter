import 'package:peervendors/models/watch_model.dart';

class WatchProvider {
  final List<WatchModel> _watchList = List.generate(
      20,
      (index) => WatchModel(
          imageLink: 'images/appleWatch.png',
          imageName: 'Apple Watch',
          model: 'Series 6 . Red',
          price: 359));

  List<dynamic> get getWatchList {
    return _watchList
        .map((e) => {
              'image': e.imageLink,
              'name': e.imageName,
              'model': e.model,
              'price': e.price
            })
        .toList();
  }
}

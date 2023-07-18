import 'package:peervendors/models/categories_model.dart';

class CategoriesProvider {
  final List<CategoriesModel> _categoriesNameList = [
    CategoriesModel(categoriesName: 'Cars, Bikes, Bicycles'),
    CategoriesModel(categoriesName: 'Electronics & Appliances'),
    CategoriesModel(categoriesName: 'Home Accessories')
  ];

  List<String?> get getGetCategories {
    return _categoriesNameList.map((e) => e.categoriesName).toList();
  }
}

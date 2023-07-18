class CategoriesModel {
  String? categoriesName;

  CategoriesModel({this.categoriesName});

  get getCategoriesName {
    return categoriesName;
  }

  set setCategoriesName(name) {
    categoriesName = name;
  }
}

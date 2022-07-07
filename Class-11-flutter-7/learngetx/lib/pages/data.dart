class MyData {
  String name;
  String age;
  MyData({required this.name, required this.age});

  Map toJson() => {
        'name': name,
        'age': age,
      };
}

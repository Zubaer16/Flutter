import 'dart:convert';

void main(){
  int age = 20;
  double a = 20.9;
  String name = 'Zubaer';
  bool value = false;
  List myList = [1,4,56,676]; //List <String> myList = ['one','two','Three']
  Set mySet = {'One','Two','Three','Four'};
  Map<String, dynamic> myMap = {
    'name':'Zubaer',
    'age' : 20,
  };
  

  var b = 'Zubaer';
  var myJson = [
    {
      {
        'name':'Zubaer',
        'age': 20
      },
      {
        'name': 'Saif',
        'age': 30
      }
    }
  ];
  print(myJson);
}
/*ভ্যারিয়েবল এর ডেটা টাইপ একটা ভ্যারিয়েবল কোন ধরণের মান ধারণ করবে সেটা নির্ধারণ করে। বিভিন্ন ধরণের ডেটা টাইপ আছে যেমনঃ int, double, String, bool, List, Set, Map, var ।  নিচে ডার্ট কোডের মাধ্যমে উদাহরণ দেয়া হল: */

void main(){
  int age = 20;
  print(age);

  double a = 20.9;
  print(a);

  String name = 'Zubaer';
  print(name);

  bool value = false;
  print(value);

  List myList = [1,4,56,676]; //List <String> myList = ['one','two','Three']
  print(myList);

  Set mySet = {'One','Two','Three','Four'};
  print(mySet);

  Map<String, dynamic> myMap = {
    'name':'Zubaer',
    'age' : 20,
  };
  print(myMap);
  

  var b = 'Zubaer';
  print(b);

  
}
/*method overriding হল parent class এর কোনো এক্সিস্টিং মেথড কে ব্যবহার এর মাধ্যমে নতুন কোনোকিছু return  করা।  ইনহেরিটেন্স এর মাদ্ধমে একটি class create করার পর প্যারেন্ট class এর এক্সিস্টিং মেথড override keyword এর মাধ্যমে ব্যবহার করা হয়।  */

void main(){
  // var obj1 = Father();
  var obj = Daughter();
  print(obj.myFunc());
  // print(obj1.myFunc());


}


class Father{
  int age = 60;

  myFunc(){
    print('My function 1');
  }

  myFunc1(){
    print('My function 2');
  }
}


class Daughter extends Father{
  @override
  myFunc() {
    print('hi this is daughter');
  }
}
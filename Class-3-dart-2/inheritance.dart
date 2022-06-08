//inheritance, overriding, abstract. 
void main(){
  // var obj1 = Father();
  var obj = Daughter();
  print(obj.myFunc());
  // print(obj1.myFunc());


}

abstract class Father{
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
void main(){

B obj = B();
obj.myMethod2();

}

class A {
  String name ="Zubaer";
  myMethod (){
    print('This is my method');
  }
}

class B extends A {
  myMethod2(){
    super.myMethod();
    print('My name is ' + super.name);
  }
}
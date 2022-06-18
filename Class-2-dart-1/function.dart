void main(){

  myFunction(){
    print('Normal Func');
    print('Normal Func');
    print('Normal Func');
  }

  myArrowFunc() =>print('Arrow Func') ;

  myFunction3(int num1, int num2){
    print(num1+num2);
  }

  myFunction4(int num1, int num2){
    return num1+num2;
  }

  myFunction();
  myArrowFunc();
  myFunction3(10, 20);
  myFunction3(10, 30);
  print(myFunction4(2, 3));
}
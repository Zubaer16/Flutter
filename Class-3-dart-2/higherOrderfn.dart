void main(){

  //function as parameter
  addTwoNumbers(){
    print(10+10);
  }
  myFunction(addTwoNumbers);//function as parameter
  print(mainFunction());


}

//function as parameter
myFunction(Function function){
  function();
}


//function as return 
mainFunction(){

  return add(10,10);
}

  add(a,b){
    return a+b;
  }

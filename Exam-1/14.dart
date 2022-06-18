/*যে ফাঙ্কশন কে variable হিসেবে পাস করা যায় , anonymous function এবং যে ফাঙ্কশন কে রিটার্ন করা যায় তাকেই higher  order function বলে।  */

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
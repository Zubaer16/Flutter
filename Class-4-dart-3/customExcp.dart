void main(){

  try {
    myValue(7);
  } catch(e){
    print(e);
  }

}

myValue(int a){
  if (a < 5){
    throw Value().lessThanFive();
  } else if (a > 10){
    throw Value().moreThanTen();
  } else {
    print('done');
  }

}

class Value implements Exception{
  String lessThanFive(){
    return "Value can't be less than five";
  }

  String moreThanTen(){
    return 'Value must be 5-10';
  }
}
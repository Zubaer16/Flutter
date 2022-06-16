void main(){
  
  print ('start');

  try{
    int div = 10 ~/ 0;
    print(div);
  } on IntegerDivisionByZeroException{
    print('Can not divide by zero');
  } catch (e){
    print('catch is working');
  } finally{
    print('always printed');
  }

  print('finish');  
  
}

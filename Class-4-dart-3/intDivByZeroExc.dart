void main(){
  
  print ('start');

  try{
    int div = 10 ~/ 0;
    print(div);
  } catch(e){
    print('this is IntegerDivisionByZeroException');
  }

  print('finish');  
  
}

void main(){
  print ('start');

  try{
    int age = int.parse('4s');
    print(age);
  } catch(e){
    print('This is error');
  }

  print('finish');  
  
}
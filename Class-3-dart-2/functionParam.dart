void main(){
 myFuntion(10, 20, 30,50);//optional positional parameter
 myFuntion1(10, b: 30, c: 40, d:50);//optional named parameter
}

//optional positional parameter
myFuntion(a,[b,c,d]){
  print(a);
  print(b); 
  print(c); 
  print(d); 
}

//optional named parameter
myFuntion1(a,{b,c,d}){
  print(a);
  print(b); 
  print(c); 
  print(d); 
}
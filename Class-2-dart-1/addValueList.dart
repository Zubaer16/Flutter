void main(){
  List myList = ['A', 'B', 'C', 'D', 'E'];

  print(myList);
  print(myList.length);
  print(myList[4]);
  myList.add('F');
  print(myList);
  myList.addAll(['G','H','I']);
  print(myList);
  myList.insert(0, "AA");
  print(myList);
  myList.replaceRange(0, 2, ['1','2','3']);
  print(myList);
}
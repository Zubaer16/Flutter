void main(){
  List myList = [4,9,16,25];

  for(int i = 0; i < myList.length; i++){
    if (myList[i]% 2 ==0){
      print('even');
    } else {
      print('odd');
    }
  }
}
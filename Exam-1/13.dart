void main(){
  List myList = [29,76,12,32];
  for(int i = 0; i < myList.length; i++){
    for(int j= 0; j < myList.length; j++){
      if (myList[i] < myList[j]){
        swap(myList, i, j);
      }
    }
  }
  print(myList);
}

swap (arr,l,r){
  int temp = arr[l];
  arr[l] = arr[r];
  arr[r] = temp;
}


/*try , catch , finally এগুলোর মাধ্যমে ডার্ট এ error handling করা হয়। বিশেষ করে catch এর মাধ্যমে error কে handle এমনভাবে করা হয় যাতে কোড সম্পূর্ণরূপে execute হতে পারে।*/

void main(){
  
  print ('start');

  try{
    int div = 10 ~/ 0;
    print(div);
  }
   catch (e){
    print('catch is working');
  } finally{
    print('always printed');
  }

  print('finish');  
  
}
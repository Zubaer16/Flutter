/* প্রথমে একটি নরমাল class এর মতো একটি class  বানাতে হবে।  এরপর সেই class  এ একটি empty  ফাঙ্কশন বানাতে হবে।  এরপর implements এই কীওয়ার্ড এর মাদ্ধমে নতুন একটা ক্লাস বানিয়ে সেটার মধ্যে override কীওয়ার্ড বেবহার করে যে class  এ আমি empty ফাঙ্কশন রেখেছি সেই function এর লজিক লিখতে হবে।  class  টি ব্যবহার করতে হলে implements class  এর instace use করে বেবহার করতে হবে। */

void main(){
 A a = A();
 a.fetch();
}


class A implements InterfaceClass{
  @override
  fetch() {
    print('This is interface class');
  }
}

class InterfaceClass{
  fetch(){

  }
}
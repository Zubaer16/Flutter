/*কোনো প্রাইভেট variable কোনো class এ থাকে সেই ক্লাস ওই class এর বাইরে use করার জন্য getter setter ব্যবহার করা হয়।  getter এর মাধ্যমে value assign করা হয়। setter এর মাধ্যমে value রিটার্ন করা হয়।  */


class SetterAndGetter {
  int? _age;

  set myAge(int age){
    _age = age;
  }

  get my_age{
    return _age;
  }
}
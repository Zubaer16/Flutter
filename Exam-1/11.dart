/*কোনো variable null কি না সেটা চেক করার জন্য null aware operator ব্যবহার করা হয়।  */

void main(){
  int? age;
  String name = 'Zubaer';
  print(age??name);
}
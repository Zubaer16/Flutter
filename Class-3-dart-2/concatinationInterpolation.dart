void main(){
  String a = 'We';
  String b = 'Are';
  String c = 'Learning';
  String d = 'Dart';

  //String Literal
  String e = 'We' 'Are' 'Learnig' 'Dart';

  //1st step
  print('$a $b $c $d');
  //2nd step
  print(a+b+c+d);

  //3rd step

  List<String> f = ['We','Are','Learning','Dart'];
  print(f.join());
}
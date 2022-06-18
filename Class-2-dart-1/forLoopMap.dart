void main(){
  List myMap = [
    {
      'name': 'Zubaer'
    },
    {
      'name' : 'Jalis'
    },
    {
      'name' : 'Saif'
    }
  ];

  myMap.forEach((element)=> print(element['name']));
}
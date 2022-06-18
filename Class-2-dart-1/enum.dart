void main(){

  final area = Area.Dhaka;

  switch (area){
    case Area.Dhaka:
      print('Dhaka');
      break;

    case Area.Barishal: 
      print('Barishal');
      break;

    case Area.Khulna:
      print('Khulna');
      break;
    
    default:
      print('Nothing matched');
  }
}

enum Area {Khulna, Dhaka, Barishal}
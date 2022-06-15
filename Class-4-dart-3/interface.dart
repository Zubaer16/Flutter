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
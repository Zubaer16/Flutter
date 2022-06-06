void main (){
 
double a = 20;
double b = 30;
var c = null;


a = b;
print('Assignment $a');

c ??= b;
print('assign if variable is null $c');

a+=b;
print ('add and assignment $a');

a-=b;
print ('subtract and assingment $a');

a*=b;
print ('multiply and assignment $a');

a/=b; 
print ('divide and assignment $a');

}
 
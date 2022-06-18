/* this  কীওয়ার্ড এর মাধ্যমে current class object কে নির্দেশ করে। যেমনঃ  */

void main() {
   Employee emp = new Employee('001');
   emp.empCode = '111';
   print(emp.empCode);
}

class Employee {
   String? empCode;
   
     Employee(String s);
   StringEmployee(String empCode) {
      this.empCode = empCode;// This is used for to indicate class object
      print("The Employee Code is : ${empCode}");
   }
}
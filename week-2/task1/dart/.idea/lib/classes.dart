import 'dart:io';
// class Person{
//   String? name;
//   int? age;
//   String? track;
//   Person(String n, int a, [String t = "Flutter"]){ //flutter as default value for track
//     this.name = n;
//     this.age = a;
//     this.track = t;
//   }
//   Person.guest(){
//     name = "guest";
//     age = 18;
//   }
//   void display(){
//     print("Name : $name");
//     print("Age : $age");
//     print("Track : $track");
//   }
// }
// class shortPerson{
//   String? name;
//   int? age;
//   shortPerson(this.name, [this.age = 19]);
//   void display(){
//     print(name);
//     print(age);
//   }
// }
//
// main(){
//   Person p1 = new Person("Zain", 19);
//   p1.display();
//   shortPerson p2 = new shortPerson("zain");
//   p2.display();
//   var p3 = Person.guest();
//   p3.display();
// }
//----------------------Inheritance------------------------
// class Vehicle{
//   int tyre;
//   Vehicle(this.tyre);
// }
// class Car extends Vehicle{
//   String name;
//   int year;
//   Car(int tyre, this.name, this.year) : super(tyre);
//   void display(){
//     print("Name : $name");
//     print("Year : $year");
//     print("Tyre : $tyre");
//   }
// }
// main(){
//   Car c1 = new Car(4,"Mustang",1969);
//   c1.display();
// }
//--------------------------Runtime Polymorphism--------------------------------
// class X{
//   void display(){
//     print("Hello from X");
//   }
// }
// class Y extends X{
//   @override       //here method of same name b/w parent and subclass gets overriden by subclass
//   void display(){
//     print("Hello from Y");
//   }
// }
// main(){
//   Y y1 = new Y();
//   y1.display();
// }
//   //in Compile time polymorphism we have methods of same name but different in parameters

//--------------------------------Encapsulation (get&set)-----------------------
// class Encap{
//   var name;
//   void setName(String n){
//     this.name = n;
//   }
//   void getName(){
//     print("Name : $name");
//   }
// }
// main(){
//   Encap e = new Encap();
//   e.setName("Zain");
//   e.getName();
// }
//------------------------------Exception Handeling-----------------------------
main() {
//   print("Enter a number :");
//   var n = stdin.readLineSync() ?? "";
//   try{
//     var input = int.parse(n);
//     print("You entered $input");
//   }catch (error) {
//     print("Please input value in digits");
//   }
//     //for multiple exceptions
//   print("Enter a number :");
//   var m = stdin.readLineSync() ?? "";
//   try{
//     var input = int.parse(m);
//     print("You entered $input");
//   }on HttpException catch (error) {
//     print("HttpException");
//   }on FormatException catch(error) {
//     print("Please input value in digits");
//   } catch (error){ //for unexpected error
//   print("Error");
//   } finally {     //will run everytime
//     print("finnally block");
//   }
//
//   try {
//     noCheck(12345);
//   } catch (e) {
//     print("Please enter a five digit number");
//   }
// }
//   void noCheck(var n) {
//     if(n.toString().length == 5) {
//       print("Valid Number");
//     } else {
//       throw FormatException();
//     }
//   }




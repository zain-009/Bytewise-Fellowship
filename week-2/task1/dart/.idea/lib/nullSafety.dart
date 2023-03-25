main(){
  var name;
  print(name); //gives null
  var n = Num1();
  int number;
  if(n != null) number = n.num;
  var o;
  print(o ??= 1);
  var p = o ?? 2; //if o is null then it assigns 2 to p
  var t = 2 % 2 == 0 ? 'Even' : 'Odd'; // assigning value based on output of 2%2
  print(t);
}
class Num1{
  int num = 10;
}
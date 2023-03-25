import 'dart:io';
main(){
  for(int i=0;i<3;i++){
    print("Dart is amazing $i");
  }
  var numbers = [1,2,"Hello"];
  for(var n in numbers){ //for in loop
    print(n);
  }
  for(var q = 0; q<numbers.length; q++){
    print(numbers[q]);
  }
  numbers.forEach((n) => print(n)); //for each loop
  void printNumbers(numbers){ //using a function
    print(numbers);
  }
  numbers.forEach(printNumbers); //passing above function as parameter
  int g = 3;
  while(g>0){
    stdout.writeln(g);
    g--;
  }
  g=3;
  do{
    stdout.writeln(g);
    g--;
  }while(g>0);
  var gg = 10;
  for(int r = 10; r>=0;r--){
    if(gg % 2 == 0) print(gg);
    gg--;
  }
}

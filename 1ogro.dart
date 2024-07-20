import 'dart:io';

void main (){
  int e = int.parse(stdin.readLineSync()!);
  int d = int.parse(stdin.readLineSync()!);

  //SE e > d entao resultado = (e+d)
  //SE d > e entao resultado = 2 x (d-e)
  print(e>d?e+d:"");
  print(d>e?2*(d-e):"");

}
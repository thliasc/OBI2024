import 'dart:io';

void main(){
  // horario inicial do jogo
  double h = double.parse(stdin.readLineSync()!); // inteiro entre 0 e 23;;
  double m = double.parse(stdin.readLineSync()!); // MINUTOS SÃO  max 59.
  double s = double.parse(stdin.readLineSync()!); // Segundos são max 59.


  // tempo T em segundos
  double tAdiado = double.parse(stdin.readLineSync()!);


  s += tAdiado; // os segundos são somados para o segundos. (SE OS SEGUNDOS TOTAL for maior que 59, então mandar o 59 formatado para minutos...)
  // o resto que sobrar, fica no segundos.

  while (s >= 60){
    m += 1;
    s = s - 60;
  } 
  
  while (m >= 60){
    h += 1;
    m = m - 60;
  }
  // não pode ser maior que 24
  while (h > 24){
    h -= 24;
  }

  // imprimir 3 linhas contendo o novo horario inicial
  print("\n${h.toInt().toString()}");
  print("${m.toInt().toString()}");
  print("${s.toInt().toString()}");

}
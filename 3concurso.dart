import 'dart:io';

void main() {

  // n de participantes e k de candidatos mininimos aprovados
  String nEkInput = stdin.readLineSync()!;

  // divide/separa os numeros
  List<int> nEk_d = funcTransf(nEkInput.split(" "));

  // notas dos participantes N
  String notasInput = stdin.readLineSync()!;
  List<int> notas_d = funcTransf(notasInput.split(" "));

  // ordem decrescente
  notas_d.sort((a, b) => b.compareTo(a));

  var c = 0;
  var passou = 0;
  for (var i = 0; i < notas_d.length; i++) {
    if (notas_d[i] >= c) {
      passou++;
      if (passou >= nEk_d[1]) {
        c = notas_d[i];
      }
    }
  }

  print(c);
}

List<int> funcTransf(List<String> nek) {
  List<int> ret = [];
  // transforma em inteiro
  for (var num in nek) {
    ret.add(int.parse(num));
  }
  
  return ret;
}

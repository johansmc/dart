import 'dart:io';

void main() {
  stdout.write("Ingrese el numero de votantes: ");
  int votantes = int.parse(stdin.readLineSync()!);
  int votos = 0;

  int candidato1 = 0;
  int candidato2 = 0;
  int votoBlanco = 0;

  for (votos = 1; votos <= votantes;) {
    stdout.write("Ingrese el candidato que desea votar: (1,2 o 3)");
    int voto = int.parse(stdin.readLineSync()!);
    if (voto == 1) {
      candidato1++;
      votos++;
    } else if (voto == 2) {
      candidato2++;
      votos++;
    } else if (voto == 3) {
      votoBlanco++;
      votos++;
    }
  }
  print("El candidato 1 obtuvo: $candidato1");
  print("El candidato 2 obtuvo: $candidato2");
  print("El voto en blanco obtuvo: $votoBlanco");
}

import 'dart:io';

void main() {
  stdout.write("Ingrese el dia (use el numero): ");
  int dia = int.parse(stdin.readLineSync()!);
  
  if(dia == 1) {
    print("El dia es Lunes");
  } else if(dia == 2) {
    print("El dia es Martes");
  } else if(dia == 3) {
    print("El dia es Miercoles");
  } else if(dia == 4) {
    print("El dia es Jueves");
  } else if(dia == 5) {
    print("El dia es Viernes");
  } else if(dia == 6) {
    print("El dia es Sabado");
  } else if(dia == 7) {
    print("El dia esDomingo");
  }
}

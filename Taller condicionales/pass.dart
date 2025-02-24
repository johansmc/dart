import 'dart:io';
void main() {
 stdout.write("Escriba su contraseña: ");
 String pass = stdin.readLineSync()!;
 String caracteresEspeciales = '!@#\$%^&*(),.?":{}|<>';
 if (pass.length >= 8 && pass.contains(RegExp('[$caracteresEspeciales]'))) {
   print("Contraseña valida");
 } else {
   print("Contraseña invalida");
 }
}


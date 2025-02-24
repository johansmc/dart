import 'dart:io';

void main() {
  stdout.write("Ingrese la contraseña: ");
  String password = stdin.readLineSync()!;

  if (password.length < 8) {
    print("La contraseña debe tener al menos 8 caracteres.");
  } else if (password.contains(' ')) {
    print("La contraseña no puede contener espacios en blanco.");
  } else if (password.contains('!') ||
      password.contains('@') ||
      password.contains('#') ||
      password.contains('%') ||
      password.contains('^') ||
      password.contains('&') ||
      password.contains('*') ||
      password.contains('(') ||
      password.contains(')') ||
      password.contains('-') ||
      password.contains('+') ||
      password.contains('=') ||
      password.contains('_') ||
      password.contains('.') ||
      password.contains(',') ||
      password.contains(';') ||
      password.contains(':') ||
      password.contains('?') 
      ) {
    print("contraseña creada correctamente");
  } else {
    print("La contraseña debe contener un caracter especial");
  }
}

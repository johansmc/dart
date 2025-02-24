import "dart:io";

void main() {
  const emailRegister = "bryamccuervo2004@gmail.com";
  const passwordRegister = "0603ccuervo";

  stdout.write("Ingrese su corrreo electronico ");
  String? email = stdin.readLineSync();

  stdout.write("Ingrese su contraseña ");
  String? password = stdin.readLineSync();

  if (password!.length < 8) {
    print("La contraseña debe tener 8 o mas de 8 caracteres");
  } else if (emailRegister == email && passwordRegister == password) {
    print("Bienvendo, ya puedes imgresar");
  } else if (emailRegister != email) {
    print("el correo que ingresaste no existe");
  } else if (passwordRegister != password) {
    print("Las contraseñas no coinciden");
  } else {
    print("Datos incorrectos");
  }
}

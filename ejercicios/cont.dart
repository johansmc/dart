import 'dart:io';

var contactos = [
  {"nombre": "juan", "numero": "123456789"},
  {"nombre": "maria", "numero": "987654321"},
  {"nombre": "pedro", "numero": "456789123"},
];
void main() {
  stdout.write(
    "Ingrese la opcion que desea realizar: \n1:Insertar \n2:Buscar \n3:Modificar \n4:Borrar \n5:Salir \n",
  );
  String opcion = stdin.readLineSync()!;

  while (true) {
    if (opcion == "1") {
      insertarContacto();
    } else if (opcion == "2") {
      buscarContacto();
      break;
    } else if (opcion == "3") {
      modificarContacto();
      break;
    } else if (opcion == "4") {
      borrarContacto();
      break;
    } else {
      print("Opcion invalida");
    }
  }
}

void insertarContacto() {
  String nuevoContacto = "";
  String numeroContacto = "";

  stdout.write("Ingrese el nombre del contacto a agregar: ");
  nuevoContacto = stdin.readLineSync()!;

  stdout.write("Ingrese el numero del contacto a agregar: ");
  numeroContacto = stdin.readLineSync()!;

  contactos.add({"nombre": nuevoContacto, "numero": numeroContacto});
  print("Contacto agregado correctamente: $nuevoContacto - $numeroContacto");
}

void buscarContacto() {
  stdout.write("Ingrese el nombre del contacto a buscar: ");
  String buscarContacto = "";
  buscarContacto = stdin.readLineSync()!;
  for (final contacto in contactos) {
    if (contacto["nombre"] == buscarContacto.toLowerCase()) {
      print("Contacto encontrado: $contacto");
    }
  }
}

void modificarContacto() {
  stdout.write("Ingrese el nombre del contacto a modificar: ");
  String modificarContacto = "";
  modificarContacto = stdin.readLineSync()!;
  for (final contacto in contactos) {
    if (contacto["nombre"] == modificarContacto.toLowerCase()) {
      print("Contacto encontrado: $contacto");

      stdout.write("Que deseas modificar \n1:Nombre \n2:Numero \n");
      String opcion = stdin.readLineSync()!;
      switch (opcion) {
        case "1":
          stdout.write("Ingrese el nuevo nombre: ");
          String nuevoNombre = stdin.readLineSync()!;
          contacto["nombre"] = nuevoNombre;
          print("Nombre modificado correctamente: $nuevoNombre");
          break;
        case "2":
          stdout.write("Ingrese el nuevo numero: ");
          String nuevoNumero = stdin.readLineSync()!;
          contacto["numero"] = nuevoNumero;
          print("Numero modificado correctamente: $nuevoNumero");
          break;
      }
      print("Contacto modificado: $contacto");
    }
  }
}

void borrarContacto() {
  stdout.write("Ingrese el nombre del contacto a borrar: ");
  String borrarContacto = "";
  borrarContacto = stdin.readLineSync()!;
  for (final contacto in contactos) {
    if (contacto["nombre"] == borrarContacto.toLowerCase()) {
      contactos.remove(contacto);
      print("Contacto borrado correctamente: $contacto");
    }
  }
}

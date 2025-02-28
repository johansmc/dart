import 'dart:io';

List<String> productos = [
  "Laptop - 1200",
  "Celular - 500",
  "Tablet - 300",
  "Mouse - 100",
];

void main() {
  while (true) {
    stdout.write(
      "Ingrese la opcion que desea realizar: \n1: Mostrar productos \n2: Agregar producto \n3: Eliminar producto \n4: Mostrar producto por indice \n5: Salir \n",
    );
    int opcion = int.parse(stdin.readLineSync()!);
    print("* ------------------------------------------------------ *");

    if (opcion == 1) {
      mostrarProductos();
    } else if (opcion == 2) {
      agregarProducto();
    } else if (opcion == 3) {
      eliminarProducto();
    } else if (opcion == 4) {
      mostrarProductosIndice();
    } else if (opcion == 5) {
      print("Saliendo del programa");
      break;
    } else {
      print("Opcion invalida");
    }
    break;
  }
}

void agregarProducto() {
  String nuevoProducto = "";

  stdout.write("Ingrese el nombre y el precio del pruducto a agregar: ");
  nuevoProducto = stdin.readLineSync()!;
  productos.add(nuevoProducto);
  print("Producto agregado correctamente: $nuevoProducto");
}


void eliminarProducto() {
  String removerProducto = "";
  stdout.write("Ingrese el nombre del producto a eliminar: ");
  removerProducto = stdin.readLineSync()!;

  if (productos.contains(removerProducto)) {
    productos.remove(removerProducto);
    print("Producto eliminado: $removerProducto");
  } else {
    print("Producto no encontrado");
  }
}

void mostrarProductosIndice() {
  stdout.write("Ingrese el indice del producto a mostrar: ");
  int indice = int.parse(stdin.readLineSync()!);
  print(productos[indice]);
}

void mostrarProductos() {
  for (int i = 0; i < productos.length; i++) {
    print("${i + 1} - Producto: ${productos[i]}");
  }
}

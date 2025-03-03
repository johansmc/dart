import 'dart:io';
import 'dart:math';

class detallesCuenta {
  String titular = "";
  int saldo = 0;
  int numeroCuenta = Random().nextInt(1000000);
  int documento = 0;

  detallesCuenta(this.titular, this.saldo, this.documento);

  void depositar(int monto) {
    while (monto <= 0) {
      print("El monto a depositar debe ser mayor a 0");
      monto = int.parse(stdin.readLineSync()!);
    }
    saldo += monto;
    print("Deposito realizado con exito");
  }

  void retirar(int monto) {
    while (monto <= 0) {
      print("El monto a retirar debe ser mayor a 0");
      monto = int.parse(stdin.readLineSync()!);
    }
    if (monto > saldo) {
      print("Saldo insuficiente");
    } else {
      saldo -= monto;
      print("Retiro realizado con exito");
    }
  }

  void consignar(int monto) {
    while (monto <= 0) {
      print("El monto a consignar debe ser mayor a 0");
      monto = int.parse(stdin.readLineSync()!);
    }
    if (monto > saldo) {
      print("Saldo insuficiente");
    } else {
      saldo -= monto;
      print("Consignacion realizada con exito");
    }
  }

  void cuentaDetalles() {
    print("Titular: $titular");
    print("Saldo: $saldo");
    print("Numero de cuenta: $numeroCuenta");
    print("Documento: $documento");
  }
}

void main() {
  detallesCuenta cuenta = detallesCuenta("Juan", 50000, 123456789);

  while (true) {
    stdout.write(
      "Elija una opcion a realizar \n1. Depositar \n2. Retirar \n3. Consignar \n4. Detalles de la cuenta \n5. Salir\n",
    );
    int opcion = int.parse(stdin.readLineSync()!);
    switch (opcion) {
      case 1:
        print("----------------------DEPOSITAR----------------------");
        stdout.write("Ingrese el monto a depositar: ");
        int monto = int.parse(stdin.readLineSync()!);
        cuenta.depositar(monto);
        print("El saldo actual de la cuenta es de");
        print(cuenta.saldo);
        print("-----------------------------------------------------");
        break;
      case 2:
        print("----------------------RETIRAR----------------------");
        stdout.write("Ingrese el monto a retirar: ");
        int monto = int.parse(stdin.readLineSync()!);
        cuenta.retirar(monto);
        print("El saldo actual de la cuenta es de");
        print(cuenta.saldo);
        print("-----------------------------------------------------");
        break;
      case 3:
        print("----------------------CONSIGNAR----------------------");
        stdout.write("Ingrese el monto a consignar: ");
        int monto = int.parse(stdin.readLineSync()!);
        cuenta.consignar(monto);
        print("El saldo actual de la cuenta es de");
        print(cuenta.saldo);
        print("-----------------------------------------------------");
        break;
      case 4:
        print(
          "----------------------DETALLES DE LA CUENTA----------------------",
        );
        cuenta.cuentaDetalles();
        print("-------------------------------------------------------------");
        break;
      case 5:
        print("Gracias por utilizar nuestros servicios SENABANK");
        break;
      default:
        print("Opcion no valida");
    }
    if (opcion == 5) {
      break;
    }
  }
}


void main() {
  String num1 = "23";
  int num2 = 45;
  int convertir = int.parse(num1);
  int sumaInt = convertir + num2;
  print("Suma cadenas de texto ${sumaInt}");

  /////////////////////////////////////////////////////////////////////////

  String value1 = "10";
  int value2 = 20;

  String valueConvertido = value2.toString();
  String sumaString = value1 + valueConvertido;

  print("Suma cadenas de texto " + sumaString);

  /////////////////////////////////////////////////////////////////////////

  String num3 = "5.9";
  double num4 = 3.5;

  double valorDecimal = double.parse(num3);

  double suma3 = valorDecimal + num4;
  print("Suma de decimales $suma3");

  int edad = 18;

  if (edad >= 18) {
    print("Usted es mayor de edad");
  } else {
    print("Usted es menor de edad");
  }
}

print("Ingrese su nombre:")
nombre = input()

print("Ingrese su fecha de nacimiento:")
print("Día:")
dia_nac = int(input())
print("Mes:")
mes_nac = int(input())
print("Año:")
año_nac = int(input())

print("Ingrese la fecha actual:")
print("Día:")
dia_act = int(input())
print("Mes:")
mes_act = int(input())
print("Año:")
año_act = int(input())

año_edad = año_act - año_nac
mes_edad = mes_act - mes_nac
dia_edad = dia_act - dia_nac

if dia_edad < 0:
    mes_edad -= 1
    dia_edad += 30 

if mes_edad < 0:
    año_edad -= 1
    mes_edad += 12


print("\nHola:", nombre)
print("Hoy tienes", año_edad, "años,", mes_edad, "meses y", dia_edad, "días.")
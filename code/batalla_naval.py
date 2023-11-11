import random

# Crear un tablero de juego (matriz)
tablero = [["~" for _ in range(10)] for _ in range(10)]

# Función para mostrar el tablero
def mostrar_tablero(tablero):
    for fila in tablero:
        print(" ".join(fila))

# Función para colocar barcos en el tablero
def colocar_barco(tablero, fila, columna):
    if 0 <= fila < 10 and 0 <= columna < 10:
        if tablero[fila][columna] == "~":
            tablero[fila][columna] = "B"
            return True
    return False

# Función para disparar cañonazo
def disparar(tablero, fila, columna):
    if 0 <= fila < 10 and 0 <= columna < 10:
        if tablero[fila][columna] == "B":
            tablero[fila][columna] = "X"
            return True
    return False

# Colocar barcos para el jugador y el oponente
for _ in range(5):
    fila = random.randint(0, 9)
    columna = random.randint(0, 9)
    colocar_barco(tablero, fila, columna)

# Juego
for turno in range(10):
    print(f"Turno {turno + 1}")
    mostrar_tablero(tablero)

    fila = int(input("Fila para disparar: "))
    columna = int(input("Columna para disparar: "))

    if disparar(tablero, fila, columna):
        print("¡Le diste a un barco enemigo!")
    else:
        print("Agua, no diste a ningún barco enemigo.")

    if all("B" not in fila for fila in tablero):
        print("¡Has hundido todos los barcos enemigos! ¡Victoria!")
        break

print("Fin del juego.")


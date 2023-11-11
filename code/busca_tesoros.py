 
import random

# Función para generar un nombre pirata aleatorio
def generar_nombre_pirata(nombre):
    apellidos = ["el Rojo", "el Sanguinario", "el Astuto", "el Temible", "el Implacable"]
    apellido = random.choice(apellidos)
    return f"{nombre} {apellido}"

# Solicitar nombres de los jugadores
print("¡Bienvenidos a la Búsqueda de Tesoros Piratas!")
nombre_jugador1 = input("Nombre del Jugador 1: ")
nombre_jugador2 = input("Nombre del Jugador 2: ")

# Asignar nombres piratas
nombre_pirata1 = generar_nombre_pirata(nombre_jugador1)
nombre_pirata2 = generar_nombre_pirata(nombre_jugador2)

print(f"\n{nombre_jugador1}, tu nombre pirata es: {nombre_pirata1}")
print(f"{nombre_jugador2}, tu nombre pirata es: {nombre_pirata2}")

# Crear un tablero de juego (matriz)
tablero = [["~" for _ in range(10)] for _ in range(10)]

# Crear un tablero para almacenar el valor de los tesoros ocultos
valores_tesoros = [[0 for _ in range(10)] for _ in range(10)]

# Función para mostrar el tablero
def mostrar_tablero(tablero):
    for fila in tablero:
        print(" ".join(fila))
    print("\n")

# Función para colocar tesoros en el tablero
def colocar_tesoros(tablero, valores_tesoros, cantidad):
    for _ in range(cantidad):
        fila = random.randint(0, 9)
        columna = random.randint(0, 9)
        if tablero[fila][columna] == "~":
            valor = random.randint(100, 1000)  # Valor del tesoro
            tablero[fila][columna] = "X"
            valores_tesoros[fila][columna] = valor

# Función para excavar en busca de tesoros
def excavar(tablero, valores_tesoros, fila, columna):
    if 0 <= fila < 10 and 0 <= columna < 10:
        if tablero[fila][columna] == "X":
            valor = valores_tesoros[fila][columna]
            tablero[fila][columna] = " "
            return valor
    return 0

# Inicializar el tablero y colocar tesoros
colocar_tesoros(tablero, valores_tesoros, 20)

# Inicializar los cofres de los jugadores
cofre_jugador1 = 0
cofre_jugador2 = 0

# Juego por turnos (3 turnos)
for turno in range(3):
    print(f"\nTurno {turno + 1}\n")
    mostrar_tablero(tablero)

    # Jugador 1
    print(f"{nombre_pirata1}")
    fila = int(input("Fila para excavar: "))
    columna = int(input("Columna para excavar: "))
    valor_encontrado = excavar(tablero, valores_tesoros, fila, columna)
    cofre_jugador1 += valor_encontrado
    print(f"Encontraste un tesoro con un valor de {valor_encontrado} monedas de oro.\n")

    # Jugador 2
    print(f"{nombre_pirata2}")
    fila = int(input("Fila para excavar: "))
    columna = int(input("Columna para excavar: "))
    valor_encontrado = excavar(tablero, valores_tesoros, fila, columna)
    cofre_jugador2 += valor_encontrado
    print(f"Encontraste un tesoro con un valor de {valor_encontrado} monedas de oro.\n")

# Determinar al ganador
if cofre_jugador1 > cofre_jugador2:
    print(f"¡{nombre_pirata1} gana con un cofre de tesoros valorado en", cofre_jugador1, "monedas de oro!")
elif cofre_jugador2 > cofre_jugador1:
    print(f"¡{nombre_pirata2} gana con un cofre de tesoros valorado en", cofre_jugador2, "monedas de oro!")
else:
    print("¡Es un empate! Ambos jugadores tienen el mismo valor en tesoros:", cofre_jugador1, "monedas de oro.")

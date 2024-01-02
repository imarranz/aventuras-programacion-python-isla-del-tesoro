 
# Capítulo 6: Enfrentamiento con Piratas

### Introducción a las Funciones y Cómo Usarlas

A medida que avanzamos en nuestra travesía por la programación y nos acercamos al emocionante enfrentamiento con piratas, es esencial comprender y dominar un concepto crucial en Python: las funciones. Las funciones nos permiten encapsular código en bloques reutilizables, simplificando nuestro programa y permitiéndonos abordar desafíos de manera más eficiente.

### ¿Qué son las Funciones?

En programación, una función es un bloque de código diseñado para realizar una tarea específica. Imagina una función como un miembro especializado de la tripulación que realiza una tarea particular cuando se le da una orden. Podemos llamar a esta función en diferentes partes de nuestro programa para ejecutar esa tarea sin tener que escribir el mismo código una y otra vez.

### Beneficios de Usar Funciones

  - **Reutilización de Código**: Una vez que definimos una función, podemos usarla en múltiples lugares de nuestro programa, evitando la duplicación de código.

  - **Modularidad**: Las funciones nos permiten dividir nuestro programa en partes más pequeñas y manejables, facilitando la comprensión y el mantenimiento del código.

  - **Abstracción**: Las funciones nos permiten abstraer detalles complejos detrás de una interfaz simple. Podemos usar funciones sin necesidad de conocer todos los detalles internos de cómo están implementadas.

### Cómo Definir y Utilizar Funciones en Python

Para definir una función en Python, utilizamos la palabra clave `def`, seguida del nombre de la función y paréntesis que pueden contener parámetros. Aquí está un ejemplo básico:

```python
def saludar():
    print("Ahoy, grumete. Preparados para el enfrentamiento.")
```

Para llamar a una función, simplemente escribimos su nombre seguido de paréntesis. Por ejemplo:

```python
saludar()
```

En este capítulo, aprenderemos a crear y utilizar funciones para abordar los desafíos que se presenten en nuestro enfrentamiento con los piratas. ¡Sigamos adelante y preparemos nuestra tripulación para esta épica batalla!


### Desarrollo de un Juego de Batalla contra Piratas Usando Funciones

En este emocionante capítulo, nos sumergiremos en la acción de alto mar mientras desarrollamos un juego de batalla contra piratas utilizando las habilidades de programación que hemos adquirido hasta ahora, especialmente el concepto de funciones. Esta aventura nos llevará a enfrentarnos a enemigos piratas y tomar decisiones cruciales en cada paso del camino.

#### Diseño del Juego de Batalla

Antes de comenzar a programar, debemos diseñar cómo se desarrollará nuestro juego de batalla. En nuestro juego, el jugador asumirá el papel del valiente capitán que debe enfrentarse a una tripulación pirata enemiga. Aquí están los elementos clave:

  1. **Salud del Jugador y del Enemigo**: Tanto el jugador como los piratas tendrán una cantidad de salud que disminuirá cuando se ataquen mutuamente.

  2. **Ataques y Defensa**: El jugador podrá elegir entre diferentes tipos de ataques (por ejemplo, espada o cañón) y también tendrá opciones de defensa (por ejemplo, esquivar o bloquear).

  3. **Toma de Decisiones**: El jugador deberá tomar decisiones estratégicas en cada turno, seleccionando un ataque o una defensa para cada ronda de batalla.

  4. **Resultados de la Batalla**: Basado en las decisiones del jugador y las acciones de los piratas, se determinará el resultado de la batalla.

#### Desarrollo del Programa en Python

A continuación, desarrollaremos un juego de batalla básico contra piratas utilizando funciones en Python. Este es solo un ejemplo simplificado para ilustrar el concepto. Puedes expandir y personalizar el juego según tus preferencias.

```python
# random es una librería que genera valores aleatorios
import random

# Función para realizar un ataque
def atacar():
    return random.randint(10, 20)

# Función para realizar una defensa
def defender():
    return random.randint(5, 15)

# Salud inicial del jugador y de los piratas
salud_jugador = 100
salud_piratas = 100

# Ciclo de batalla
while salud_jugador > 0 and salud_piratas > 0:
    print("Piratas a la vista")

    # Jugador elige su acción
    accion = input("¿Qué acción deseas tomar? (atacar/defender): ")

    # Realizar acción del jugador y de los piratas
    if accion == "atacar":
        danio_jugador = atacar()
        danio_piratas = atacar()
    elif accion == "defender":
        danio_jugador = defender()
        danio_piratas = atacar() - defender()
        danio_piratas = max(0, danio_piratas)  # No puede ser un valor negativo
    else:
        print("Acción no válida. Pierdes un turno.")
        continue

    # Actualizar la salud
    salud_jugador -= danio_piratas
    salud_piratas -= danio_jugador

    print(f"Tu salud: {salud_jugador}")
    print(f"Salud de los piratas: {salud_piratas}")

# Determinar el resultado de la batalla
if salud_jugador <= 0:
    print("Los piratas han ganado la batalla. Has perdido.")
else:
    print("Victoria. Has derrotado a los piratas y salvado la Isla del Tesoro.")
```

### Ejecutando Batalla contra Piratas

Este programa simula una batalla donde el jugador puede elegir entre atacar o defender en cada turno. Los resultados se determinan mediante cálculos de salud y daño. Puedes expandir y personalizar este juego según tus preferencias, agregando más acciones, enemigos y desafíos.

¿Te animas a cambiar la función? Podrías aumentar las posibilidades de ganar a los piratas cambiando `salud_jugador = 200` y `salud_piratas = 50` pero igual es hacer trampas ¿no?


¡Prepárate para enfrentarte a los piratas y demostrar tu valentía en la próxima batalla en alta mar!

\begin{figure}[h]
    \centering
    \includegraphics[width=0.8\textwidth]{./figures/batalla-naval.png} % Reemplaza "nombre_de_tu_archivo" con el nombre de tu imagen y su extensión
    \caption*{Las aguas agitadas se convierten en el escenario de una feroz batalla naval entre valientes piratas en busca de gloria y tesoros. Las velas ondean al viento, los cañones retumban y las espadas chocan en una lucha por el control de los mares. Imagen generada con DALL-E.}
    \label{fig:batalla-naval}
\end{figure}

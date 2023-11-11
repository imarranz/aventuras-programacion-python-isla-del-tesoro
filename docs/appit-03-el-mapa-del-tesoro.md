# Capítulo 3: El Mapa del Tesoro

### Introducción a las Listas y su Relación con un Mapa

En nuestro emocionante viaje inspirado en "La Isla del Tesoro", llegamos al capítulo 3, donde aprenderemos sobre las listas en Python y su relación con la creación de un mapa del tesoro. Las listas son una herramienta poderosa que nos permitirá organizar información y navegar por el mundo digital de nuestra aventura pirata.

#### ¿Qué son las Listas?

En el mundo de la programación, una lista es una colección ordenada de elementos. Puedes pensar en ella como una serie de tesoros enterrados uno junto al otro en la playa de una isla desierta. Cada tesoro tiene un lugar específico en la lista, y puedes acceder a ellos según su posición.

#### Creación de Listas

Para crear una lista en Python, simplemente encierra los elementos entre corchetes `[]` y sepáralos por comas. Aquí tienes un ejemplo de una lista que contiene algunos elementos:

```python
tesoros = ["mapa", "brújula", "espada", "monedas de oro"]
```

En este caso, hemos creado una lista llamada `tesoros` que contiene cuatro elementos: "mapa", "brújula", "espada" y "monedas de oro".

#### Acceso a Elementos de una Lista

La posición de un elemento en una lista se llama su "índice". Los índices comienzan en 0 para el primer elemento, 1 para el segundo y así sucesivamente. Puedes acceder a un elemento de la lista utilizando su índice. Por ejemplo:

```python
primer_tesoro = tesoros[0]  # Accede al primer elemento (mapa)
segundo_tesoro = tesoros[1]  # Accede al segundo elemento (brújula)
```

En este caso, `primer_tesoro` contendrá "mapa" y `segundo_tesoro` contendrá "brújula".

### Relación con un Mapa

Ahora, ¿cómo se relaciona esto con un mapa del tesoro? Imagina que cada elemento en nuestra lista `tesoros` representa un punto en el mapa. El mapa nos guía a través de la isla en busca de tesoros específicos. Por ejemplo, el "mapa" podría llevarnos al lugar donde se encuentra el "tesoro enterrado", y la "brújula" podría ayudarnos a navegar hacia el "tesoro escondido en el bosque". Las listas nos permiten organizar y acceder a estos elementos de manera efectiva, al igual que un mapa guía a un pirata a través de la isla en busca de riquezas ocultas.

\begin{figure}
    \centering
    \includegraphics[width=0.8\textwidth]{./figures/mapa_plano_tesoro.png} % Reemplaza "nombre_de_tu_archivo" con el nombre de tu imagen y su extensión
    \caption*{Este antiguo mapa del tesoro revela secretos enterrados en islas remotas y playas ocultas. Sigue las pistas, descifra los enigmas y aventúrate en la búsqueda de riquezas perdidas. Imagen generada con DALL-E.}
    \label{fig:mapa_plano_tesoro}
\end{figure}

```
import random

# Generar un número aleatorio entre 1 y 20
numero_secreto = random.randint(1, 20)

intentos = 0

print("Bienvenido a la búsqueda del tesoro")
print("El tesoro está en una posición entre 1 y 20. Tienes 5 intentos.")

while intentos <= 5:

    # Pedir al usuario un número
    respuesta = int(input("Ingresa la posición: "))

    # Incrementar el contador de intentos
    intentos += 1

    # Comprobar si la suposición es correcta
    if respuesta == numero_secreto:
        print(f"Felicidades. Has encontrado el tesoro en {intentos} intentos.")
        break
    elif respuesta < numero_secreto:
        print("El tesoro está en un número más alto. Sigue intentando.")
    else:
        print("El tesoro está en un número más bajo. Sigue intentando.")

print("Oh, no has podido encontrar el tesoro.")

```

### Fondeadero

Ahora que hemos aprendido sobre las listas y su relación con un mapa del tesoro, estamos preparados para utilizar esta poderosa herramienta en nuestra aventura. En los próximos capítulos, crearemos un mapa interactivo que nos ayudará a rastrear los tesoros y secretos ocultos en "La Isla del Tesoro". ¡Sigue explorando y aprendiendo, intrépido buscador de tesoros!

### Una Tarea para Experimentados Grumetes

¿Te animas a crear una lista con los personajes principales de la novela?

```python
personajes = ["Jim Hawkins",
              "Dr. Livesey",
              "Long John Silver",
              "Capitán Flint"]
```

## Creación de un Programa que Simula un Mapa del Tesoro

Ahora que hemos aprendido sobre las listas y su relación con un mapa, es hora de aplicar este conocimiento para crear un programa en Python que simule un mapa del tesoro en nuestra búsqueda de "La Isla del Tesoro". Este mapa interactivo nos ayudará a rastrear y explorar la isla en busca de tesoros ocultos.

### Diseñando el Mapa del Tesoro

Antes de escribir el código, necesitamos diseñar nuestro mapa. Imaginemos que nuestra isla del tesoro está dividida en diferentes lugares clave, y cada lugar contiene un tesoro único. Aquí está el diseño de nuestro mapa:

  1. **Playa del Naufragio:** Aquí encontraremos el "mapa del tesoro".

  2. **Bosque Encantado:** El "tesoro escondido en el bosque" se encuentra aquí.

  3. **Cueva Misteriosa:** Dentro de la "cueva misteriosa" hallaremos un "cofre del capitán".

  4. **Calavera del Corsario:** Esta ubicación nos llevará a las "monedas de oro enterradas".

### Creando el Programa en Python

Ahora que tenemos nuestro mapa, escribiremos un programa en Python para simularlo. Utilizaremos una lista para representar las ubicaciones del mapa y mostraremos un mensaje cuando el usuario seleccione una ubicación. Aquí está el código:

```python
# Lista de ubicaciones del mapa
mapa_del_tesoro = [
    "Playa del Naufragio",
    "Bosque Encantado",
    "Cueva Misteriosa",
    "Calavera del Corsario"
]

# Mostrar las ubicaciones disponibles
print("Ubicaciones disponibles en el mapa del tesoro:")
for i, ubicacion in enumerate(mapa_del_tesoro):
    print(f"{i + 1}. {ubicacion}")

# Pedir al usuario que seleccione una ubicación
opcion = input("Elige una ubicación (1-4): ")

# Convertir la entrada del usuario a un índice
indice = int(opcion) - 1

# Mostrar el tesoro en la ubicación seleccionada
if 0 <= indice < len(mapa_del_tesoro):
    print(f"Has llegado a la {mapa_del_tesoro[indice]}. Aquí hay un tesoro esperando por ti")
else:
    print("Ubicación no válida. La búsqueda continúa.")
```

En este programa, hemos creado la lista `mapa_del_tesoro` que contiene las ubicaciones. Luego, mostramos las ubicaciones disponibles al usuario y le pedimos que elija una. Finalmente, utilizamos el índice seleccionado para mostrar un mensaje que indica que ha llegado a una ubicación con un tesoro.

### Ejecutando el Programa

Para ejecutar el programa, copia y pega el código en tu consola de Linux y sigue las instrucciones. Selecciona una ubicación y el programa te dirá qué tesoro has encontrado.

¡Felicidades! Has creado un programa que simula un mapa del tesoro en Python. En los próximos capítulos, continuaremos mejorando y expandiendo esta aventura en programación inspirada en "La Isla del Tesoro". ¡Sigue explorando y disfrutando de la búsqueda de tesoros!

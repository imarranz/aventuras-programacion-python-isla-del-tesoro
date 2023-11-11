 
# Capítulo 4: Abordando el Barco Pirata

### Introducción a las Estructuras de Control (Condicionales)

A medida que avanzamos en nuestra aventura inspirada en "La Isla del Tesoro", nos encontramos frente al imponente barco pirata del Capitán Flint. Antes de abordarlo, debemos comprender las estructuras de control en Python, específicamente, las estructuras condicionales. Estas estructuras nos permiten tomar decisiones en nuestro código y determinar el curso de la acción en función de ciertas condiciones.

#### ¿Qué son las Estructuras de Control Condicionales?

Las estructuras de control condicionales son herramientas en programación que nos permiten realizar acciones diferentes según se cumplan o no ciertas condiciones. Puedes pensar en ellas como tomar decisiones en tu programa, similar a cómo un capitán decide si abordar o no un barco en función de las circunstancias.

En Python, las estructuras condicionales se implementan principalmente a través de las sentencias `if`, `elif` (abreviatura de "else if") y `else`. Estas sentencias nos permiten evaluar condiciones y ejecutar bloques de código específicos en función de si esas condiciones son verdaderas o falsas.

**La Sentencia `if`: Tomando Decisiones**

La sentencia `if` se utiliza para evaluar una condición y ejecutar un bloque de código si esa condición es verdadera. Aquí hay un ejemplo simple:

```python
edad = 15
if edad >= 18:
    print("Eres mayor de edad. Puedes abordar el barco pirata.")
```

En este caso, la condición es `edad >= 18`, y si es verdadera, se ejecuta la instrucción dentro del bloque `if`.

**La Sentencia `elif`: Alternativas**

La sentencia `elif` se utiliza cuando tenemos múltiples condiciones y queremos verificar la siguiente en caso de que la condición anterior sea falsa. Por ejemplo:

```python
edad = 15
if edad >= 18:
    print("Eres mayor de edad. Puedes abordar el barco pirata.")
elif edad >= 16:
    print("Eres un joven aventurero. Puedes unirte a la tripulación con restricciones.")
else:
    print("Aaarrr, eres demasiado joven para abordar el barco pirata.")
```

En este caso, estamos considerando tres escenarios diferentes en función de la edad del personaje.

**La Sentencia `else`: Alternativa Final**

La sentencia `else` se utiliza cuando ninguna de las condiciones anteriores es verdadera. Es la "alternativa final". Por ejemplo:

```python
color_bandera = "negro"
if color_bandera == "negro":
    print("Aaarrr, la bandera es de piratas. Puedes abordar el barco.")
else:
    print("La bandera no es de piratas. No puedes abordar el barco.")
```

Si la bandera es negra, el personaje puede abordar el barco. Si no es negra, se le niega el acceso.

::: tip
¿Sabías que el nombre que recibe la bandera tradicional de los piratas, una calavera cruzada por huesos sobre un fondo negro, se llama _Jolly Roger_?
:::

### Fondeadero

Las estructuras de control condicionales son fundamentales para tomar decisiones en la programación y determinar cómo se ejecutará un programa en función de las condiciones dadas. En el próximo capítulo, aplicaremos estas estructuras condicionales en nuestra aventura pirata mientras decidimos si podemos abordar el barco del _Capitán Flint_. ¡Sigue adelante y toma el control de tu destino pirata!




### Desarrollo de un Juego de Elección de Caminos como en la Historia

Estamos en un momento crucial de nuestra aventura, frente al barco pirata del temido Capitán Flint. Para hacer esta experiencia aún más emocionante, crearemos un juego de elección de caminos que refleje la toma de decisiones que se encuentran en la narrativa de "La Isla del Tesoro". A través de estructuras de control condicionales, permitiremos que el jugador decida el curso de la acción.

#### Diseño del Juego y las Decisiones

En nuestro juego, el jugador tendrá que decidir si abordar o no el barco pirata. Si decide abordar, se encontrará con más opciones y desafíos. Si decide no abordar, la historia seguirá un camino diferente. Vamos a diseñar las opciones:

1. **Decisión 1: ¿Abordar el Barco Pirata?**

   - Opción 1: Abordar el barco pirata.

   - Opción 2: No abordar y explorar más la isla.

2. **Decisión 2 (si se decide abordar): ¿Entrar en la Bodega o en la Cubierta?**

   - Opción 1: Entrar en la bodega.

   - Opción 2: Ir a la cubierta.

3. **Decisión 3 (si se decide entrar en la Bodega): ¿Buscar Tesoros o Escapar?**

   - Opción 1: Buscar tesoros en la bodega.

   - Opción 2: Intentar escapar del barco.

#### Desarrollo del Programa en Python

Ahora, creemos el programa en Python que simulará este juego de elección de caminos. Utilizaremos estructuras condicionales para guiar al jugador a través de las opciones y mostrar resultados basados en esas decisiones. Aquí está el código:

```python
print("Bienvenido a la Aventura Pirata")

print("Decisión 1: ¿Abordar el barco pirata?")
decision_1 = input("Escribe '1' para abordar o '2' para explorar más la isla: ")

if decision_1 == "1":
    print("Has abordado el barco pirata.")

    print("Decisión 2: ¿Entrar en la Bodega o en la Cubierta?")
    decision_2 = input("Escribe '1' para entrar en la bodega o '2' para ir a la cubierta: ")

    if decision_2 == "1":
        print("Has entrado en la bodega del barco.")

        print("Decisión 3: ¿Buscar Tesoros o Escapar?")
        decision_3 = input("Escribe '1' para buscar tesoros o '2' para intentar escapar: ")

        if decision_3 == "1":
            print("Encontraste un cofre lleno de monedas de oro. Felicidades, valiente pirata.")
        elif decision_3 == "2":
            print("Has intentado escapar, pero te han atrapado. Juego terminado.")
        else:
            print("Opción no válida. Juego terminado.")

    elif decision_2 == "2":
        print("Has ido a la cubierta del barco. Aaarrr, Afronta el siguiente desafío, intrépido pirata")
    else:
        print("Opción no válida. Juego terminado.")

elif decision_1 == "2":
    print("Has decidido explorar más la isla. Buena suerte en tu aventura.")

else:
    print("Opción no válida. Juego terminado.")
```


### Ejecutando el Juego

El jugador debe escribir el número correspondiente a la opción que desea elegir en cada etapa del juego. Dependiendo de las decisiones tomadas, el juego mostrará diferentes resultados y rutas a seguir.

¡Ahora estás listo para vivir esta emocionante aventura pirata a través de tu programa en Python! En el próximo capítulo, ampliaremos esta idea y la conectaremos con la historia de "La Isla del Tesoro". ¡Sigue adelante y toma el control de tu destino pirata!

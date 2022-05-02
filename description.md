**El dominio**
Un microcontrolador es una computadora hecha en uno o varios chips. Suelen utilizarse en la industria para controlar máquinas, herramientas, robots, teléfonos celulares, etc.

Un fabricante de microcontroladores le solicita a Ud. que haga un simulador de uno de sus modelos de microcontroladores, el cual consta de:
Una gran cantidad de posiciones que conforman la memoria de datos. Consideramos que la memoria comienza a partir de la posición 1.
Dos acumuladores que contienen valores enteros, cada uno identificados como A y B.
Un program counter (PC) que comienza con el valor cero y se incrementa cada vez que el microcontrolador ejecuta una instrucción.
Una etiqueta con el último mensaje de error producido

El fabricante nos pasó la lista de instrucciones mínimas que debe soportar:
<img src="https://raw.githubusercontent.com/pdep-utn/mumuki-guia-haskell-primer-tp-funcional-2022/master/assets/tp1_1650404519119.JPG" alt="tp1_1650404519119.JPG" width="auto" height="auto">


**Restricciones sobre la entrega**
Definir la abstracción Microprocesador como quieran. Sólo debe cumplir:
* que debe haber una función programCounter que permita conocer el program counter de un microprocesador
* que debe haber una función acumuladorA / acumuladorB que permita conocer los acumuladores A y B de un micro
* que debe haber una función memoria que permita conocer la zona de memoria de un micro
* que debe haber una función mensajeError que permita conocer el mensaje de error de la última instrucción de un microprocesador
* los nombres de los microprocesadores deben ser at8086, fp20 y xt8088
* los nombres de las instrucciones deben ser nop, lodv, swap, add, str, lod y divide

**Casos de prueba**
4.1 Punto 2
Luego de avanzar el procesador xt8088 tres veces, se espera que el program counter quede en 3. Los acumuladores deben quedar en cero, con la memoria vacía y sin etiqueta de errores.

4.2 Punto 3
LODV 5 tiene 
como precondiciones: el acumulador A y B están en cero
como post-condiciones: el acumulador A tiene valor 5 y el B cero.
Dado un procesador fp20 que tiene acumulador A con 7 y acumulador B con 24, al ejecutar SWAP el acumulador A debe quedar con 24 y el B con 7.
Luego de ejecutar el programa que suma 10 + 22, el acumulador A debe quedar en 32 y el B en 0.

4.3 Punto 4
Dado el procesador at8086 que tiene los acumuladores en cero, el program counter en 0, sin mensaje de error y una memoria con los siguientes datos: [1..20], le ejecutamos la instrucción STR 2 5. Entonces el procesador at8086 debe quedar con un 5 en la posición 2: [1, 5, 3, 4, 5,... ]
LOD 2 de un procesador xt8088 con la memoria vacía (1024 posiciones con valores cero) debe dejar con cero el acumulador A (cero = ausencia de información)
Ejecutar por consola la división 2 por 0 para el procesador xt8088 según el programa escrito arriba, esperamos el mensaje de error “DIVISION BY ZERO”, y un 5 en el program counter.
Ejecutar la división de 12 por 4 para el procesador xt8088 (cambiando los valores del programa anterior), que debe dar 3 y no tirar ningún mensaje de error



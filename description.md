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

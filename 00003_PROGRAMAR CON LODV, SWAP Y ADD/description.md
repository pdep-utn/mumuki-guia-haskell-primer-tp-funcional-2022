1. Modelar las instrucciones LODV, SWAP y ADD.
2. Implementar el siguiente programa, que permite sumar 10 + 22
<img src="https://raw.githubusercontent.com/pdep-utn/mumuki-guia-haskell-primer-tp-funcional-2022/master/assets/Captura1_1650467301210.PNG" alt="Captura1_1650467301210.PNG" width="auto" height="auto">
Debe procurar no repetir el código para aumentar el program counter.

Veamos los estados intermedios y final que tiene el microcontrolador para hacer la suma:

LODV 10
<img src="https://raw.githubusercontent.com/pdep-utn/mumuki-guia-haskell-primer-tp-funcional-2022/master/assets/Captura2_1650467558447.PNG" alt="Captura2_1650467558447.PNG" width="auto" height="auto">
<img src="https://raw.githubusercontent.com/pdep-utn/mumuki-guia-haskell-primer-tp-funcional-2022/master/assets/Captura3_1650467658716.PNG" alt="Captura3_1650467658716.PNG" width="auto" height="auto">
<img src="https://raw.githubusercontent.com/pdep-utn/mumuki-guia-haskell-primer-tp-funcional-2022/master/assets/Captura4_1650467720808.PNG" alt="Captura4_1650467720808.PNG" width="auto" height="auto">

Es importante encontrar una abstracción para el programa como también testear el estado final del microprocesador luego de ejecutar las instrucciones.

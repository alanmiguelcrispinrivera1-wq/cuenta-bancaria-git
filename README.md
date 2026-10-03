# Cuenta bancaria — Git y pull requests

**Autor:** Alan Miguel Crispin Rivera

## Cómo correr

    ./correr.sh

## Mis pull requests

| # | Qué cambió |
|---|---|
| 1 | El estado de cuenta muestra cuántos retiros se hicieron y cuántos fueron gratis |
| 2 | README y evidencia de la práctica |

## Boleto de salida

1. ¿Qué diferencia hay entre `git add` y `git commit`?

   Respuesta: El comando git add prepara los archivos modificados y los coloca en una especie de sala de espera, mejor conocida como la staging area. En este punto, los cambios aún no están guardados permanentemente. Ahi entra en juego el comando git commit, ya que este comando toma todo lo que está en la sala de espera (staging area) y lo guarda definitivamente en el historial de nuestro repositorio local, adjuntando un mensaje descriptivo. Podemos pensar en git add como poner productos en nuestro carrito de compras y el git commit seria lo equivalente a pagar en la caja y llevarnos el recibo. 

2. ¿Por qué después del merge en GitHub tu `main` de Ubuntu no tenía el cambio hasta que hiciste `git pull`?

   Respuesta: Yo entiendo que nuestro entorno local (el main de Ubuntu) y GitHub (entorno remoto) no se sincronizan automáticamente. Entonces, cuando hacemos un merge en GitHub, solo estamos actualizando la rama main que vive en los servidores de internet. Digamos que nuestra computadora es completamente ciega a ese cambio hasta que ejecutamos el comando git pull, el cual es la forma explicita para descargar las novedades de GitHub y fusionarlas con nuestra computadora.

3. Abriste un PR y después hiciste otro commit en la misma rama. ¿Qué pasó con el PR?

   Respuesta: El Pull Request se actualiza automáticamente con nuestro nuevo codigo. El punto clave es que una PR no es una foto estática del momento en que lo abrimos, sino una ventana directa a nuestra rama. Mientras el PR siga abierto, cualquier commit adicional que subamos con git push a esa rama se agregará al mismo hilo de revisión.

4. ¿Por qué en un equipo nadie hace cambios directamente en `main`?

   Respuesta: Yo considero a la rama main como la rama que contiene la informacion verdadera, o sea, que contiene el código que está en producción o listo para usarse. Si por error alguien sube código a medias o con errores directamente ahi, rompe el proyecto para todo el equipo. Otro punto importante es que de alguna forma el crear ramas separadas nos obliga a usar Pull Requests, que a su vez nos permite que otros miembros del equipo revisen nuestro código y los cambios/features que deseamos agregar, y con esto ellos puedan detectar errores y sugerir mejoras antes de mezclar el código, o sea, antes de hacer merge. Finalmente, gracias a esto podemos trabajar de forma paralela ya que si todos editaramos la rama main al mismo tiempo, habría un caos de conflictos (merge conflicts) cada vez que alguien intentara guardar sus cambios. Trabajar en ramas aisladas permite que múltiples personas desarrollen funciones distintas sin estorbarse unos a los otros.
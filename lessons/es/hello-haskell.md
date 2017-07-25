---
title: Hola Haskell
date: 2017-07-11
...

# Hola Haskell

Esta es una guia mágica de Haskell. Así que usemos Haskell! Recuerda que Haskell
es un lenguaje que usaremos para decirle a la computadora que hacer, y vamos a
usar un programa para traducir Haskell a algo que la computadora pueda
comprender.

Existe una vieja tradición de empezar a usar un nuevo lenguaje con un programa
que dice "Hola Mundo", así que haremos lo mismo aquí. Crea un nuevo fichero
llamado `Main.hs`. No hay nada mágico en el nombre "Main", es solamente una
convención, algo que las personas hacen generalmente por que "main", en inglés,
significa "principal". El `.hs` al final es la forma de identificar que el
fichero contiene código Haskell dentro.

Ahora, escribe exactamente este contenido en tu fichero y guárdalo:

```haskell
main = putStrLn "Hola Mundo"
```

Ahora puedes ejecutar el programa con este comando:

```
stack runghc Main.hs
```

Asegúrate de ejecutarlo en el mismo directorio en el que guardaste tu fichero.
¿Qué ocurrió?

__Ejercicio__ Intenta crear otro fichero llamado `hello.hs` con el mismo
contenido. ¿Qué crees que necesitas escribir en la terminal para ejecutar ese
fichero?

## Comprendiendo el programa Hola Mundo

Lo primero que encontramos en nuestro programa es `main =`. Todo programa
Haskell empieza ejecutando una acción llamada `main` (que significa "principal"
en inglés), y estamos indicando que `main` empieza aquí. (Si, es por esta misma
razón que también llamamos `Main.hs` a nuestro fichero). Nuestra _definición_ de
la acción `main` está en el lado derecho del signo igual.

`putStrLn` luce algo confuso, pero significa "poner una cadena en linea". Por
ahora, considera que lo de "linea" es magia (lo explicaremos luego en los
ejercicios). Una _cadena_ de texto en una computadora son un grupo de letras,
números, y otros símbolos juntos. Generalmente las escribimos en nuestros
programas dentro de comillas `"`. Eso es exactamente lo que es `"Hola Mundo"`:
una cadena! Y queremos ponerla en la terminal, así que usamos `putStrLn` :).

OK, ahora sabemos que es `putStrLn`, pero ¿qué _es_?. Esta es nuestra primera
_función_. Las funciones son cosas que toman datos de entrada y producen datos
de salida. `putStrLn` es una función que toma una cadena de texto como entrada y
produce una _acción_ como salida. Esa acción escribirá la cadena de texto en la
terminal.

Eso es todo, acabas de escribir tu primer programa en Haskell. Vas muy bien en
tu camino de convertirte en un programador!

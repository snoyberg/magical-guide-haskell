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

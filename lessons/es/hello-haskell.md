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

## Números

Usar cadenas de texto y palabras está bien. Pero las computadoras son muy buenas
con los números. ¿Podemos hacer algo con los números? El siguiente programa _no_
va a funcionar, pero lo vamos a intentar de cualquier forma.

```haskell
main = putStrLn 5
```

Intenta poner esto en `Main.hs` y ejecútalo nuevamente con `stack runghc
Main.hs`. (Esta es la ultima vez que te digo esto. Desde ahora, cuando te
muestre código, ya sabrás que debes ejecutarlo de esa forma). Veras un mensaje
de error. Es el programa diciéndote "no estás escribiendo Haskell de forma
correcta, déjame ayudarte". Esta es la parte importante:

```
No instance for (Num String) arising from the literal ‘5’
```

La palabra "instance" es magia por ahora, no te preocupes de eso. "Literal" es
solamente como llamamos a los números que aparecen de forma directa en nuestro
programa. La parte interesante es "Num String". Piensa en estas dos preguntas:

1. ¿Qué tipo de entrada habíamos dicho que `putStrLn` recibe?
2. ¿Es el numero 5 una cadena de texto?

La respuesta es que `putStrLn` necesita una cadena de texto, pero 5 _no_ es una
cadena. El programa GHC te está diciendo que que no sabe como ejecutar los
comandos que le diste. Las personas pueden darse cuenta que se debería convertir
ese numero 5 en una cadena de texto "5". Pero recuerda: _las computadoras son
tontas_. Necesitan que se les diga exactamente que hacer.

Necesitamos decirle a GHC como convertir el numero 5 en una cadena de texto.
Existe otra función para eso, llamada `show` (que significa "mostrar" en
inglés). Así que necesitamos agregar eso también. Podrías pensar que sería algo
como esto:

```haskell
main = putStrLn show 5
```

Ahora tenemos dos funciones. Queremos poner `5` en la función `show`, y obtener
el resultado de `show` para ponerlo en `putStrLn`. Pero ese código no dice eso,
en realidad dice "pon `show` y `5` al mismo tiempo en `putStrLn`", y esto no
tiene ningún sentido. Necesitemos ayudar a GHC otra vez (por que es tonto).

Usamos algo llamado _paréntesis_ para hacer esto. Luce así:

```haskell
main = putStrLn (show 5)
```

Esto dice "Quiero que el resultado de `show 5` se use como entrada de
`putStrLn`", que es exactamente lo que queremos.

No te preocupes si los paréntesis se ven algo confusos ahora, con un poco de
práctica todo te resultará muy sencillo de comprender.

## Ejercicios

1. Intenta usar `putStr` en lugar de `putStrLn` en el ejemplo "Hola Mundo".
   ¿Cuál es la diferencia en el resultado? ¿Qué crees que significa aquello de
   "linea" en `putStrLn`?
2. En lugar de `5`, intenta poner `(6 + 7)`. ¿Qué ocurre? (¿Crees que Haskell es
   una buena calculadora?)

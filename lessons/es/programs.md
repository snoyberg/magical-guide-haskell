---
title: Programas
date: 2017-06-28
...

# Programas

Las computadoras son tontas. Es verdad que pueden hacer algunas cosas que
nosotros los simples humanos apenas entendemos. Por ejemplo, pueden multiplicar
los números 159374930 y 43849593 más rápido de lo que tu puedes leer la
respuesta. Pueden recordar a la perfección palabras en millones de libros,
mientras nosotros los humanos tenemos problemas para memorizar una sola página
de "El gato con sombrero".

Pero esto no significa que las computadoras sean inteligentes. Ellas hacen
exactamente lo que les decimos y nada más. Si le pides a un humano "caminar
hasta la tienda y comprar pan", el humano sabrá que necesita ponerse los
zapados, tomar algo de dinero, mirar a ambos lados de la calle antes de cruzar,
y traer el pan a casa luego de comprarlo. Una computadora necesitaría
instrucciones detalladas de cada uno de esos pasos.

Para hacerlo aún peor, las computadoras no pueden hablar Español, no pueden
hablar Inglés ni pueden hablar _ningún_ lenguaje humano. Las computadoras hablan
algo llamado código maquina, que no es más que un montón de unos y ceros
(también conocido como _binario_). El código maquina hace cosas aburridas como
"sumar dos números" o "cargar información desde la memoria". Además, a nosotros
los humanos no nos gusta mucho lidiar con esos detalles aburridos, mucho menos
lidiar con unos y ceros. Preferimos pensar en palabras y conceptos más amplios.

Pero tu has visto a tu computadora hacer cosas "inteligentes". Probablemente
estás leyendo esto en tu computadora ahora mismo y no estás leyendo unos y
ceros, estas leyendo esto como palabras en una página. Eres capaz de usar el
ratón para moverte en la página, si te aburres de leer esto (no te culpo),
puedes jugar o ver una película. ¿Cómo pueden las computadoras hacer estas cosas
aparentemente inteligentes en lugar de simplemente hacer matemáticas?

La respuesta es con _programas_.

## ¿Qué es un programa?

Las computadoras solamente comprenden código máquina. Los programas son un
montón de código máquina que le indica a la computadora hacer algo más
inteligente, usualmente para hacer que el humano pueda _interactuar_ más
fácilmente. Cuando digo "interactuar", me refiero a comunicarse con la
computadora.  Por ejemplo, pedir a la computadora sumar 5 y 7 es difícil de
hacer con código máquina. Sin embargo, estoy seguro que puedes abrir la
calculadora en tu computadora ahora mismo, hacer click en "5", luego en "+",
luego en "7" y finalmente en "=" para obtener el resultado (Aunque también
espero que puedas hacer ese calculo _sin_ una computadora).

La calculadora que abriste no es mágica, es un programa que proporciona una
_interfaz_ para que los humanos puedan decir a la computadora que hacer. En este
caso, la interfaz es un montón de botones en la pantalla donde puedes hacer
click con el ratón. Una interfaz le da al humano una forma de comunicarse e
interactuar con la computadora.

Supongo que estás leyendo esto en  una página web. El programa que te permite
ver páginas web se llama _navegador web_, como Firefox o Chrome. Estos son
programas que le dicen a la computadora que hacer. Lo que hacen estos programas
es enviar mensajes a computadoras que se encuentran en todo el mundo pidiendo
páginas web, luego convierten esas páginas web en texto y colores que tu y yo
podemos ver y usar.

Estos programas son _interfaces gráficas de usuario_. Tu (el humano) eres el
usuario. El programa provee una interfaz, algo con lo que puedes interactuar. Y
además es gráfica: con colores, ventanas, botones, etc.

## Interfaz Textual

Antes de que existieran las interfaces gráficas, habían interfaces de _texto_.
Estas te permiten escribir comandos como palabras en lugar de hacer click en
botones. Estas interfaces no son código máquina; aún estas interactuando con un
programa que traduce lo que le dices a la computadora. Hagamos algo de esto
ahora mismo.

__NOTA__ Estas instrucciones están pensadas para usuarios Linux y Mac.
Probablemente no funcionarán en Windows.

Tu computadora tiene un programa llamado _terminal_, que provee una ventana
donde puedes ejecutar programas basados en texto. Abre la terminal ahora (pide
ayuda a alguien si lo necesitas). En una computadora con Linux, puedes hacer
esto presionando las teclas CTRL y ALT en el teclado y al mismo tiempo presiona
la letra `T` (la letra inicial de "Terminal"). En Mac, presiona la tecla
"control" y presiona la barra espaciadora, escribe "terminal", y presiona
"enter". Debería tener un aspecto similar a este:

![Terminal](images/terminal.png)

Tu terminal está ejecutando otro programa dentro llamado la _shell_. La shell
habla su propio lenguaje que se parece mucho al Inglés. Para comunicarte con la
shell debes escribir comandos y presionar enter. Esto se conoce como la
_entrada_ de la shell. La shell se comunica contigo poniendo cosas en la
pantalla. Esto se conoce como la _salida_ de la shell. Para demostrarlo intenta
escribir lo siguiente y luego presiona enter:

    echo Hola Mundo

La shell debería decir "Hola Mundo" (En Inglés `echo` significa "eco", así que
le estas pidiendo a la shell que haga eco de lo que le escribes). Deberás ver
algo así:

![Shell Hola Mundo](images/shell-hello-world.png)

La shell funciona de la siguiente manera: la primera palabra que escribes es un
_comando_, como `echo`, y el resto de las palabras son los _argumetnos_, como
"Hola" y "Mundo". Le dijiste a la shell que "ejecute el comando `echo`, y dale
los argumentos `Hola` y `Mundo`." La shell responde ejecutando el programa de
textual llamado `echo` con los argumentos `Hola` y `Mundo`. El código máquina
del programa `echo` sabe que debería imprimir esas palabras en la pantalla.

Quieres intentar con otro comando? Intenta escribir `date`. Debería darte la
fecha y hora actual. Espera unos segundos y ejecútalo otra vez, notarás que el
resultado es ligeramente diferente.

Incluso puedes descargar páginas web en la terminal. Quieres ir a *YouTube*?
Intenta escribir `curl https://www.youtube.com`. Esto no se verá igual a lo que
estás acostumbrado, son solamente un montón de letras, números y símbolos raros.
Así es como la página web luce por dentro, el navegador web convierte todo eso
en algo que es más fácil de ver y usar.

__Pregunta__ ¿Qué programa ejecutaste para ver YouTube? ¿Qué argumentos le diste
a ese programa?

¿Por qué nos interesan estas interfaces basadas en texto si hoy en día tenemos
interfaces gráficas? ¿Por qué ejecutar `date` si tu computadora ya puede
mostrarte la fecha? ¿Qué uso puede tener `echo`? Y ¿Por qué descargaría una
página web de esa forma si podría ver el vídeo en mi navegador web?

La respuesta es que la shell es muy poderosa, nos permite hacer ciertas cosas
que son difíciles o imposibles desde una interfaz gráfica. Si solamente usas
interfaces gráficas estas limitando todo lo que puedes lograr. Y cuando se trata
de programar, muchas cosas son mucho más sencillas usando una interfaz textual.

__Ejericio__ Escribe `hacer un pastel`. ¿Qué ocurre? ¿Por qué crees que ocurrió?

## Calculadora Boba

Nuestra shell también puede hacer algo de _magia_. Por ejemplo, puedes usarla
como una pequeña calculadora. Intenta escribir lo siguiente:

    echo $((5 + 3))

Excelente, ya tienes una calculadora basada en texto! Resulta que la shell es
mucho más de lo que te he dicho hasta ahora; Es un _lenguaje de programación_
completo. Un lenguaje de programación es un lenguaje que te permite escribir tus
propios programas. Lo que es genial sobre la shell es que puedes escribir
programas muy sencillos directamente en la terminal, como nuestra mini
calculadora.

Existen muchísimos lenguajes de programación diferentes. Quizás has escuchado de
algunos de ellos: Javascript, C++, Python y Ruby. Probablemente te estés
preguntando por que existen tantos lenguajes de programación en lugar de
solamente uno. Déjame preguntarte algo a _ti_: ¿Por qué existen tantos idiomas
humanos, como Inglés, Francés, Español, Japonés y Ruso? Resulta que hay muchas
razones para esto. Cada lenguaje de programación hace las cosas un poco
diferente.

En esta guia mágica hablaremos de un lenguaje de programación llamado Haskell.
Como este será el primer lenguaje que aprendas, no te diré que es lo que lo hace
diferente de los demás lenguajes por que sería confuso. Luego de que hayas
aprendido Haskell, puedes aprender otros lenguajes para ver en que se
diferencian, de la misma forma que cuando sabes Español puedes aprender Hebreo
y ver como se diferencian (es extraño! Las letras van de derecha a izquierda en
lugar de izquierda a derecha!).

Te había dicho que puedes escribir pequeños programas en la terminal usando la
shell. Pero si quieres escribir programas reales, probablemente no quieras
escribir el programa entero en la terminal cada ves que quieras usarlo. En lugar
de eso, podemos escribir los programas en archivos. Lo que nos lleva a la
siguiente sección...

__Ejericio__ ¿Puedes hacer que la terminal te diga cuanto es 43 multiplicado por
22? (puedes usar un _*_ como símbolo de multiplicación).

## El aspecto de la shell

Quizás notaste que cuando escribes cosas en la shell, esta tiene algo escrito de
antemano. En mi computadora, se ve algo como esto:

```
Michaels-MBP-3:~ michael$
```

Esto se llama el _prompt_, y te dice algunas cosas como: el nombre de la
computadora en la que estás trabajando, y el nombre del usuario. No necesitas
preocuparte por estas cosas. Todo lo que está antes del signo dolar (`$`) es
solamente información que puedes ignorar.

Varias veces encontrarás instrucciones que lucen algo así:

```
$ echo Hola Mundo
```

No necesitas escribir el signo dolar, solamente está ahí para indicarte que esto
es una linea que escribes en la shell luego del prompt. Esto tiene más sentido
cuando lo ves con el resultado:

```
$ echo Hola Mundo
Hola Mundo
```

Como la primera linea inicia con el signo dolar, puedo saber que eso es lo que
debo escribir. Y como la segunda linea no lo tiene, puedo saber que es lo que la
shell me responde.

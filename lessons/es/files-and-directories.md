# Archivos y Directorios

Tu computadora tiene que recordar muchas cosas. Todos esos programas que ejecuta
deben estar en algún lado, cierto? Digamos que estas trabajando en un deber
escolar y haces click en el botón de "guardar", tu trabajo debe guardarse en
algún lugar, cierto? La respuesta a esto se llama _archivos_ y _directorios_.
Los directorios también son conocidos como _carpetas_.

Un archivo es algo que tiene un nombre y tiene información dentro. Los archivos
se colocan dentro de directorios, que son como arboles donde organizas cosas.
Podemos explorar un poco estos conceptos usando la shell. Por ejemplo, escribe
`pwd` y presiona enter. `pwd` significa "Imprimir el directorio de trabajo
actual" por sus siglas en ingles. `pwd` te dice en que directorio la shell está
en este momento. En mi computadora, obtengo:

    Michaels-MBP-3:~ michael$ pwd
    /Users/michael

Los símbolos llamados "slash" (`/`) son separadores: indican dónde cada nombre
de directorio termina y empieza el siguiente. Esto significa que en mi
computadora hay un directorio llamado `Users`. Dentro de él hay otro directorio
llamado `michael`. Ese es el directorio donde estoy en este momento.

También podemos ver que archivos y directorios existen en el directorio actual
usando el comando `ls` (listar). Por ejemplo, esto es lo que tengo en mi
directorio:

    Michaels-MBP-3:~ michael$ ls
    Aplicaciones  Escritorio    Descargas  Libros     Musica     Publico
    Sonido        Documentos    Salud      Peliculas  Imagenes   dotfiles

Usually when you do this in your terminal, directories will be a dark
blue so you can tell them apart. You can move around to other
directories with the command `cd` (change directory). For example, I
can change into the `Documents` directory with:

Por lo general cuando haces esto en tu terminal, los directorios tendrán otro
color para poder diferenciarlos. Puedes moverte de un directorio a otro usando
el comando `cd` (cambiar directorio). Por ejemplo, puedo entrar al directorio
`Documentos` con:

    cd Documentos

__Truco__ Los programadores son muy ociosos y odian escribir demasiado con
palabras completas. En la shell, puedes hacer algo llamado _completado con tab_,
consiste en escribir el inicio de una palabra y luego presionar la tecla "tab"
para completarlo. En mi computadora, puedo escribir `cd Doc` y luego presionar
"tab" para que el comando se complete.

Piensa que hará el comando `pwd` ahora que estoy dentro del directorio
`Documentos`. ¿Lo adivinaste? Esto es lo que aparece:

    Michaels-MBP-3:Documentos michael$ pwd
    /Users/michael/Documentos

Se parece mucho al anterior `/Users/michael`, solo que esta vez tiene el
`Documentos` al final. Hemos entrado más profundo en el árbol de directorios.
También puedo usar `ls` aquí:

    Michaels-MBP-3:Documentos michael$ ls
    guia-magica-haskell

Oh, mira eso! Estoy trabajando en esta guia ahora mismo!

Digamos que estoy aburrido de los documentos y quiero ir un paso arriba en el
árbol de directorios a `/Users/michael`. Podria escribir `cd /Users/michael`.
Pero hay una forma más rápida para esto: `cd ..` significa "ir un directorio
arriba".

    Michaels-MBP-3:Documentos michael$ cd ..
    Michaels-MBP-3:~ michael$ pwd
    /Users/michael
    Michaels-MBP-3:~ michael$ ls
    Aplicaciones  Escritorio    Descargas  Libros     Musica     Publico
    Sonido        Documentos    Salud      Peliculas  Imagenes   dotfiles

Veamos como crear un nuevo directorio. Para que sea más fácil de ver, vamos a
crearlo en el escritorio. Primero hacemos `cd Escritorio`, y luego usamos el
comando `mkdir`, que significa "crear directorio".

    Michaels-MBP-3:~ michael$ cd Escritorio/
    Michaels-MBP-3:Escritorio michael$ mkdir magia
    Michaels-MBP-3:Escritorio michael$ ls
    magia
    Michaels-MBP-3:Escritorio michael$ cd magia

Intenta hacerlo tu mismo. Luego, intenta encontrar el directorio que creaste
usando la interfaz gráfica. (Pida ayuda si la necesitas).

Muy bien, estamos listos para crear un archivo. Primero, vamos a crear un
archivo vació usando el comando `touch`. Asegúrate de estar dentro del
directorio `magia` que creaste hace un momento. (Usa `pwd` para revisar, y `cd`
para entrar en ese directorio si es necesario). Luego ejecuta:

    Michaels-MBP-3:magia michael$ touch hola.txt
    Michaels-MBP-3:magia michael$ ls
    hola.txt

Ponemos `.txt` al final como la _extensión de archivo_, que nos ayuda a saber
que es un archivo de texto. Este fichero es aburrido, sería genial si pudiéramos
poner algo en él. Podemos hacerlo con el comando `echo`:

    Michaels-MBP-3:magia michael$ echo Hola Mundo > hola.txt

El símbolo `>` significa "envía el resultado de este programa a este archivo".
¿Pero cómo sabemos si funcionó? Bueno, podemos intentar dos cosas:

1. En tu interfaz gráfica, encuentra el archivo `hola.txt` y haz doble click
   sobre él.

2. También puedes usar el comando `cat` en la shell:

        Michaels-MBP-3:magia michael$ cat hola.txt
        Hola Mundo

Excelente, has creado un archivo!

## Editor de Texto

Sería muy irritante tener que escribir nuestros programas usando `echo` como
acabamos de hacer. Cuando editamos archivos, generalmente usamos algún programa
especialmente diseñado para hacerlo. Cuando creamos archivos de texto (como será
el caso de nuestros programas), usamos un _editor de texto_. De igual forma que
los lenguajes de programación, existen muchos editores de texto diferentes. Te
voy a recomendar que uses un editor de texto con interfaz gráfica para que
puedas usar el ratón para moverte en el archivo y hacer click en un botón para
guardar. También existen editores para la terminal (como Vim o Emcas), pero
queremos enfocarnos en aprender a programar, no como usar un editor de texto.

__Ejericio__ Muy bien, aquí está el reto: Abre un editor de texto en tu
computadora. Escribe las palabras `echo Hola Mundo`. Guárdalo dentro del
directorio `magia` en un archivo llamado `hola.sh` (la extensión `.sh` significa
que es un programa para la shell). Cuando lo hayas hecho, el archivo debería
aparecer en el visor de archivos, y escribir `ls` en la terminal debería
mostrarlo. Finalmente escribe `sh hola.sh` para pedirle al programa `sh` (shell)
que ejecute tu programa `hola.sh`.

Si hiciste todo eso, acabas de escribir tu primer programa completo. No hace
mucho, pero ya es un avance! Además, ¿no te parece que es divertido como
ejecutas tu programa? Le pides a un programa que ejecute otro programa. Esto
tiene sentido si recuerdas lo que dije antes: estas escribiendo en un lenguaje
de programación (shell) que la computadora no entiende, así que necesitas
pedirle a _otro_ programa que lo traduzca.

Esta forma de ejecutar programas se llama _interprete_, por que ejecutas un
programa que interpreta tus comandos y se los envía a la computadora. Existe
otra forma de ejecutar programas, llamada _compilación_, donde le pides a un
programa llamado compilador que traduzca tu programa a lenguaje de máquina. El
compilador te entrega un archivo con el código de máquina que tu computadora
puede ejecutar directamente.

No te preocupes mucho por esto ahora, míralo como si fuera magia, y
eventualmente hablaremos sobre por que harías una cosa u otra.

## Descarga Stack

Muy bien, eso fue mucha información que no tiene mucho que ver con programar! El
objetivo es que te sientas cómodo con la terminal, la shell, y creando archivos
y directorios. Puedes jugar con la terminal todo lo que quieras. (__Nota para
padres__ Es una buena idea usar una cuenta personal para el niño, para evitar
que los ficheros sean borrados accidentalmente).

Para nuestro paso final, vamos a conseguir los programas que necesitamos para
escribir programas en Haskell. Hay varios que necesitaremos. Pero por
ahora vamos a empezar con solamente uno, Stack, que es una herramienta que
descarga todo lo que necesitas, y te ayuda a ejecutar tus programas.

Puedes instalar Stack ejecutando este comando. Puedes intentar copiándolo y
pingado lo en tu terminal, o escribirlo a mano. También necesitaras pedir a un
adulto que escriba la contraseña de la computadora:

    curl -sSL https://get.haskellstack.org/ | sh

Si quieres saber más sobre Stack puedes ver la [Página para empezar con
haskell](https://haskell-lang.org/get-started). Para asegurarte que Stack se
descargó correctamente, ejecuta esto:

    Michaels-MBP-3:~ michael$ stack --version
    Version 1.4.1, Git revision 45e2ba52a08b235ef1a6421e73bbbe7255014796 (4759 commits) x86_64 hpack-0.17.0

Es posible que veas algo un poco diferente. El argumento `--version` del
programa `stack` significa "Dime cual es tu numero de versión". Muchos programas
aceptan algunas _banderas_ especiales como `--version`. Otro muy común es
`--help`, que te permite obtener ayuda sobre el uso de un programa. Intenta
pedirle a Stack información de ayuda usando esa bandera.

Stack aún necesita descargar algo llamado GHC (El compilador Glasgow de
Haskell), que es el que hará todo el trabajo real. Puedes pedirle que haga eso
ahora (probablemente tome algo de tiempo, así que es un buen momento para
terminar esta lección). Ejecuta:

    Michaels-MBP-3:~ michael$ stack setup --resolver lts-8.12

El argumento `setup` le pide a Stack que "configure todo lo que necesitamos para
empezar a trabajar". Verás la bandera `--resolver lts-8.12` varias veces. Por
ahora, es solamente magia. :)

Buen trabajo, ahora sabes mucho más sobre computadoras que la gran mayoría de
adultos en todo el mundo.

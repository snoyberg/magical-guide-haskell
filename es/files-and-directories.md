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

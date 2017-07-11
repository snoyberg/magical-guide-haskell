---
title: Hello Haskell
date: 2017-07-11
...

# Hello Haskell

This is a magical guide to Haskell. So let's do some Haskell! Remember
that Haskell is a language that we're going to use to tell the
computer what we want it to do, and we're going to use a program to
translate Haskell into something the computer itself understands.

There's an old tradition of starting a new language with "Hello
World", and we'll do the same thing here. Create a new file called
`Main.hs`. There's nothing magical about the word "Main" here, it's
just a convention (meaning, something people usually do). The `.hs` at
the end is the way we identify that the file has Haskell code in it.

Now, type in exactly this content to your file and save it:

```haskell
main = putStrLn "Hello World"
```

Now you can run the program with this command:

```
stack runghc Main.hs
```

Make sure you run it in the same directory that you saved your
file. What happened?

__Exercise__ Try making another file called `hello.hs` with the same
content. What do you think you need to type into the terminal to run
that file?

## Understanding Hello World

The first thing in our program is `main =`. Every Haskell program
starts running in an action called `main`, and we're saying what
`main` is here. (And yes, this is sort of why we called our file
`Main.hs`.) Our _definition_ of the main action is on the right hand
side of the equals sign.

`putStrLn` looks confusing, but it means "put a string line." For now,
treat that "line" bit as magic (though we'll explain it in the
exercises at the end of this lesson). A _string_ in a computer is a
bunch of letters, numbers, and other characters put together. We
usually write them in our programs inside `"`, or double quotes. And
that's exactly what `"Hello World"` is: a string! And we want to put
it in the terminal. Throwing that all together: `putStrLn` :).

OK, so now we know what `putStrLn` means, but what _is_ it. This is
our first _function_. Functions are things that take some input and
produce output. `putStrLn` is a function which takes a string as
input, and produces an _action_ as output. That action will put the
string in the terminal.

That's it, you've written your first Haskell program. You're well on
your way to being a programmer!

## Numbers

Dealing with strings and words and stuff is nice. But computers are
all about numbers. Can we do something with numbers? This next program
is _not_ going to work, but we're going to try it anyway:

```haskell
main = putStrLn 5
```

Try putting that in `Main.hs` and run it again with `stack runghc
Main.hs`. (That's the last time I'll tell you to do that; from now on,
after I give you some code, you should run it like that.) You'll see
an error message. This is the program telling you "you're not speaking
Haskell correctly, let me try to help you." Here's the important part:

```
No instance for (Num String) arising from the literal ‘5’
```

That word "instance" is magic for now, don't worry about it. "Literal"
is just the way we talk about numbers that appear inside your program
directly. The interesting part is "Num String." Think about two
questions:

1. What kind of input did we say the `putStrLn` function takes?
2. Is the number 5 a string?

The answer is that `putStrLn` needs a string, but 5 is _not_ a
string. The GHC program is telling you that it doesn't know how to run
the commands you gave it. A person would probably be able to figure it
out and turn that number 5 into a string 5. But remember: _computers
are dumb_. They need to be told exactly what to do.

We need to tell GHC with our code how to turn 5 into a string. There's
another function for that, called `show`. We want to throw that in
here too. You might think it would look like this:

```haskell
main = putStrLn show 5
```

Now we have two functions. We want to feed `5` into `show`, and get
the output from `show` and feed it into `putStrLn`. But our code above
doesn't say that: it says "feed both `show` and `5` into `putStrLn`",
which doesn't make any sense. We need to help GHC again (because it's
dumb).

We use something called _parentheses_ to do this. This looks like:

```haskell
main = putStrLn (show 5)
```

This says "I want the output from `show 5` to go into `putStrLn`",
which is exactly what we want.

Don't worry if parentheses seem a little confusing right now, with a
little bit of practice it will all make a lot more sense.

## Exercises

1. Try using `putStr` instead of `putStrLn` in the "Hello World"
   example. What's different in the output? What do you think the
   "line" in `putStrLn` means?
2. Instead of `5`, try putting in `(6 + 7)`. What happens? (Is Haskell
   a good calculator?)

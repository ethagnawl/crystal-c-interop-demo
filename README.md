# Overview

After having been intrigued by Crystal's C interop facilities while reading through [the docs](https://crystal-lang.org/docs/syntax_and_semantics/c_bindings/), I decided to write a C library (my first!) and try linking it into a program. The library provides one function (`hello`), which accepts one parameter and uses it to print a heartfelt message (e.g. `Hello, world!`).

I ran into [one issue](http://stackoverflow.com/questions/42427195/trouble-linking-against-static-c-library-in-crystal-program) along the way, but I believe that was a result of my ignorance about the C library ecosystem. I also went off the rails a bit because I was using a static library and not something available via pkg-config. Either way, once I figured out how to supply the path to my static library to `@[Link]`, everything Just Worked.

# Build
`crystal build src/c-interop.cr`

# Run
`./c-interop` \# => Hello, world!

# Interesting bits
- ./src/c/lib/hello.c
- ./src/c-interop.cr

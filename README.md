# Stanford_CS1_Compilers

This is the repo used to house information for the Stanford compilers course work.

## Course Link

https://lagunita.stanford.edu/courses/Engineering/Compilers/Fall2014/info

# Dependencies

- Docker (For Windows/Mac/Linux)
    - Not docker toolbox, docker should be used natively
        - https://docs.docker.com/docker-for-windows/
        - https://docs.docker.com/docker-for-mac/
        - Linux docker will be fine

# Quick Launch

To quick launch the stanford docker image with the github repo just use the Makefile

THIS MUST BE RUN FROM THE REPOSITORY'S ROOT DIRECTORY

```
// Runs the Makefile's configurations
make
```

# Class Notes

Please see the [class_notes] section to see the notes taken during this course.

[class_notes]: class_notes/README.md

# How to Run Cool Code
```
$ mkdir examples
$ cd examples
$ cp /usr/class/cs143/examples/hello_world.cl .
$ coolc hello_world.cl
$ spim hello_world.s
SPIM Version 6.5 of January 4, 2003
Copyright 1990-2003 by James R. Larus (larus@cs.wisc.edu).
All Rights Reserved.
See the file README for a full copyright notice.
Loaded: /usr/class/cs143/cool/lib/trap.handler
Hello, World.
COOL program successfully executed
Stats -- #instructions : 152
         #reads : 27  #writes 22  #branches 28  #other 75
```
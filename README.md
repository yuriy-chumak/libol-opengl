```
                  Small,
       `___`         Embeddable
       (o,o)            and
       \)  )          Purely
     ---"-"---      Functional!
  O t u s L i s p

```

[![Visit the project page](https://yuriy-chumak.github.io/ol/assets/view-project-page.svg)](https://yuriy-chumak.github.io/ol/)
[![Travis-CI project page](https://travis-ci.org/yuriy-chumak/ol.svg)](https://travis-ci.org/yuriy-chumak/ol)

Otus Lisp, Version 2.0
======================

Otus Lisp (Ol in short) is a purely functional dialect of Lisp.

It implements an extended subset of R<sup>7</sup>RS Scheme including, but not limited to, some of the SRFIs.
It's tiny (~42kb), embeddable and cross-platform; provides a portable, high-level way to call code written in other languages.

You can use Ol in GNU/Linux, Windows, Unixes (macOS, Solaris, kinds of BSD), Android, webOS, Minoca and lot of any other operation systems based on various hardware architectures (x86/x86_64, arm, aarch64, ppc, mips, etc).


LICENSE
-------

Otus Lisp is available under 2 licenses:
[MIT License](LICENSE) and
[GNU ](COPYING)([L](COPYING.LESSER))[GPLv3 License](COPYING).

Copyright (c) 2014 Aki Helin

Copyright (c) 2014-2019 Yuriy Chumak


SUPPORT
-------

Join the online [![Join the chat at https://gitter.im/otus-lisp/Lobby](https://badges.gitter.im/otus-lisp/Lobby.svg)](https://gitter.im/otus-lisp/Lobby), additionally [Freenode](https://webchat.freenode.net) channel *#otus-lisp* is available.

Leave your propositions, Ol bugs and issues at [the issues](https://github.com/yuriy-chumak/ol/issues) page. If your architecture is not supported, leave a ticket too.


LEARNING
--------

You can find Ol samples at:
* [RosettaCode](http://rosettacode.org/wiki/Category:Ol) Ol page.
* [Samples](https://github.com/yuriy-chumak/ol/tree/master/samples) ans [Tests](https://github.com/yuriy-chumak/ol/tree/master/tests) repository folders.


DOWNLOAD / INSTALLATION
-----------------------

You can use basic Ol functionality without any installation -
just copy the `ol` (`ol.exe` for Windows) binary to any user
accessible path. Basic functionality includes a rich set of
functions: lists, ffs (builtin associative arrays), i/o, lazies,
strings, symbols, vectors, math, regex, tuples, etc.

Extended functionality (i.e. OpenGL support) requires full Ol package installation.
Additionally, you can copy desired [libraries](https://github.com/yuriy-chumak/ol/tree/master/libraries) to your OL_HOME or current directory.

Next platforms installation packages can be found at
[openSUSE Build Service](https://software.opensuse.org/download.html?project=home%3Ayuriy-chumak&package=ol):

* CentOS 6 (x86, amd64), CentOS 7 (amd64),
* Debian 7 (x86, amd64), Debian 8 (x86, amd64),
* Fedora 22 (x86, amd64), Fedora 23 (x86, amd64),
* RHEL 5 (x86, amd64), RHEL 6 (x86, amd64), RHEL 7 (amd64),
* SLE 10 (x86, amd64), SLE 11 (x86, amd64), SLE 12 (amd64),
* ScientificLinux 6 (x86, amd64), ScientificLinux 7 (amd64),
* Univention 3.2 (x86, amd64), Univention 4.0 (x86, amd64),
* openSUSE 13.1 (x86, amd64), openSUSE 13.2 (x86, amd64),
  openSUSE Factory (aarch64, armv7l),
  openSUSE Leap 42.1 (amd64),
  openSUSE Tumbleweed (x86, amd64),
* Ubuntu 12.04 (x86, amd64), Ubuntu 14.04 (x86, amd64, aarch64, armv7l), Ubuntu 16.04 (x86, amd64)


Next platforms installation packages can be found at the [Releases](https://github.com/yuriy-chumak/ol/releases) announcement page:

* Windows (x86, amd64)
* Android (arm64-v8a, armeabi, armeabi-v7a, mips, mips64, x86, x86_64)


BUILD REQUIREMENTS
------------------

You should have GCC >3.2 or CLANG >3.5 or TCC installed.
For Windows you should have MinGW (with GCC).
If you want to compile asm.js binary (is not required by regular build) you should have Emscripten v.1.37.40.


R<sup>7</sup>RS DIFFERENCES
---------------------------

* 6.1. Equivalence predicates (EQV?)
  * (eqv? '#() '#()) is **#true**, but *unspecified* in Scheme
  * (eqv? +nan.0 +nan.0) is **#true**, but *unspecified* in Scheme
* 6.2.5. Syntax of numerical constants
  * NUMBERS WITHOUT PRECISION considered to be **exact** in Ol, but *inexact* in Scheme. Inexactness can be disabled by compiler features or/and can be unsupported by platform and we should expect the same behavior of the program independently of inexactness support (unless we use inexact numbers, sure).
* 6.4. Pairs and lists
  * MEMQ and ASSQ behavior with 'short' numbers as first argument is fully **specified** in Ol, but *unspecified* in Scheme.
* 4.2.7. Exception handling
  * **No** *guard* and *raise* in Ol.



BUILD
-----

### SIMPLEST WAY

```bash
$ make; make install
```
> gmake for unix clients


### INTERESTING WAY

#### Linux way

To build only olvm (ol virtual machine)

```bash
$ gcc src/olvm.c -DNAKED_VM  -std=c99 -O2  -o vm -ldl
```

To build full OL

```bash
$ ld -r -b binary -o tmp/repl.o repl
$ gcc src/olvm.c tmp/repl.o  -std=c99 -O2  -o ol -ldl
```

To build asm.js binary

```bash
$ source {your-emsdk-path}/emsdk_env.sh
$ make olvm.js
```

Olvm can execute only precompiled Ol scripts (see BINARY SCRIPTS
section) and is very small (about 35KB).
Full Ol with interpreter, that can execute text lisp scripts is about 400KB size.


#### Windows way

Building only olvm (virtual machine)

```cmd
> set PATH=%PATH%;C:\MinGW\bin
> gcc.exe src\olvm.c -DNAKED_VM -IC:\MinGW\include\ -LC:\MinGW\lib\ -std=c99 -O2  -o ol -lws2_32
```

Building OL

```cmd
> set PATH=%PATH%;C:\MinGW\bin
> ld -r -b binary -o tmp/repl.o repl
> gcc.exe src\olvm.c tmp\repl.o -IC:\MinGW\include\ -LC:\MinGW\lib\ -std=c99 -O2  -o ol -lws2_32
```


#### macOS/FreeBSD/OpenBSD/NetBSD/\*BSD way

Required include "c" library instead of "dl":

```bash
$ gcc src/olvm.c -DNAKED_VM  -std=c99 -O2  -o vm -lc

$ ld -r -b binary -o tmp/repl.o repl
$ gcc src/olvm.c tmp/repl.o  -std=c99 -O2  -o ol -lc
```


#### Android way

```bash
$ ndk-build
```

#### MacOS/iOS way

tbd.

#### Open webOS way

Put toolchain/ol.bb bitbake recipe into any place of open webOs
recipes folder (i.e. ./meta-oe/) and run "make ol" from root
open webOs folder.

Upload ol executable from BUILD/work/<build-name>/ol/<version>/build
to machine /bin.

Now you cat execute ol under webos command line or other way you
would like.


### CASTOMIZATION WAY

If you want to disable/enable some olvm features you can use -Dxxx or -Dxxx=y gcc syntax. This is a list of customizations:

|Variable      |Value           |Meaning |
|--------------|----------------|--------|
|NAKED_VM      | 1\|0, default 0|Disables including of REPL into binary|
|EMBEDDED_VM   | 1\|0, default 0|Disables 'main' function, makes olvm embed|
|OLVM_FFI      | 1\|0, default 1|Enables FFI support|
|OLVM_CALLABLES| 1\|0, default 1|Enables FFI callbacks support|
|OLVM_INEXACTS | 1\|0, default 1|Enables inexact math support|
|OLVM_BUILTIN_FMATH| 1\|0, default 1|Enables builtin vm floating-point math|
|CAR_CHECK     | 1\|0, default 1|Enables car arguments check|
|CDR_CHECK     | 1\|0, default 1|Enables cdr arguments check|

|Variable      |Value           |Meaning |
|--------------|----------------|--------|
|HAS_DLOPEN    | 1\|0, default 1|Enables dlopen/dlsym functions support|
|HAS_SOCKETS   | 1\|0, default 1|Enables socket functions support|
|HAS_UNSAFES   | 1\|0, default 1|Enables "unsafe" functions|
|HAS_SANDBOX   | 1\|0, default 1|Enables internal sandbox support (depends on OS kernel)|
|HAS_STRFTIME  | 1\|0, default 1|Enables strftime function support|

You can disable next olvm features by setting valiable to 0 (-Dxxx=0)

|Variable|Meaning|
|--------|-------|
|SYSCALL_SYSINFO | sysinfo() function|
|SYSCALL_PIPE    | pipe() function|
|SYSCALL_GETRLIMIT| getrlimit() function|
|SYSCALL_GETRUSAGE| getrusage() function|


### LANGUAGE CHANGING

You can change Ol language (yes, you can) by editing sources in
lang/ and owl/ subfolders. Additionally you can change virtual machine
by editing src/vm.scm and src/olvm.c source files.

To build Ol language (not Ol virtual machine)

```bash
$ make recompile
```

This will create new (in successful way) REPL binary that contains ol
interpreter code.

Few words about OL can be found in documentation on the project page.


ADDITIONAL OL VM FEATURES
-------------------------

To disable sockets support (linux and windows) you can please add
-DHAS_SOCKETS=0 to gcc command line or set appropriate define in
src/olvm.h to 0. You can remove -lws2_32 for Windows from command
line additionally.

To disable dlopen/dlsym (LoadLibrary/GetProcAddress for windows)
support you can add -DHAS_DLOPEN=0 to gcc command line or set
appropriate define in src/olvm.h to 1. You can remove -ldl for
Linux from command line additionally.

Please note that external libraries (like opengl, sqlite, etc.)
support require HAS_DLOPEN enabled.

To disable ffi (Foreign Function Interface) support you can add
-DOLVM_FFI=0 to gcc command line or set appropriate define in
src/olvm.h to 0.

Please note that external libraries (like opengl, sqlite, etc.)
support require OLVM_FFI enabled.

For embedding OL into your project check the EMBEDDING OL section.


RUNNING
-------

There are few ways to execute ol

#### Interactive mode

```scheme
$ ol
Welcome to Otus Lisp 1.2,
type ',help' to help, ',quit' to end session.
> (+ 1 2 3)                      # now you in REPL and can play with in
6
> ,quit                          # this ends interactive session
bye bye :/
```

#### Unattended mode

```bash
$ ol scriptname.ol                # text script
$ ol scriptname.bl                # binary (compiled) script
$ echo '(print (+ 1 2 3))' | ol
```

For Windows

```cmd
> echo (print (+ 1 2 3)) | ol
```


BINARY SCRIPTS
--------------

OL can execute precompiled scripts. You can compile your script
using this code:

```scheme
(define (main . args)
   (print "hello !")) ; anything you want to compile

(fasl-save main "out.bl")
```

, where "out.bl" is your output file name.
This code will create binary script, that can be executed directly by ol or vm.

Now you can execute this code by OL or just Olvm:
```bash
$ ./vm out.bl
hello !

$ ./ol out.bl
hello !
```

FILES
-----

* repl  - the compiled OL binary interpreter/compiler
* src/olvm.c  - the OL vm source code (in C)
* include/olvm.h  - the OL virtual machine header (not required by compiler)
* extensions/ffi.c include/ffi.h  - FFI implementation
* lang/*.scm  - OL repl and compiler source codes (in Lisp)
* library/**.scm - various OL libraries (in Lisp)
* tests/**.scm - some automation tests (in Lisp)


TRICKS
------

Register interpreter in the ms windows:

```
assoc .ol=OLisp.File
ftype OLisp.File=ol "%1" %*
assoc .bl=OLisp.Binary.File
ftype OLisp.Binary.File=ol "%1" %*
```

Register interpreter in the linux: start you script with

```
#!/usr/bin/ol
```


USAGE
-----

Ol (Otus Lisp) can be used either interactively, or to interpret code
from files, or compile programs to fasl-images. The difference between
an ol program and a plain script is that the program should just have
a function of one argument as the last value, which will be called with
the command line argument list when the program is executed.


EMBEDDING OL
------------

Ol can be embed in your project. It supports direct calls of external
C functions for 32- and 64-bit platforms with full callables support.

Please check the next code as a sample:

```c
// embedded olvm usage example
#include "embed.h"

// embed.h header provides few simplified macroses and functions
// to easy work with ol virtual machine.
// For example, make_integer(x) converts C integers into internal
// olvm format. Other cases please check in embed.h header.

// olvm embed instance
ol_t ol;

int main(int argc, char** argv)
{
    // result of ol functions call
    uintptr_t r;
    // create new embedded olvm instance
    embed_new(&ol);

    // our embed extension can work in different manners:
    // 1. if eval got only one string parameter it returns the value of parameter,
    //    this can be used to evaluate variables, constants or any expressions
    //    from the string (i.e. you can read whole lisp file info string and send
    //    it to execute by olvm)
    // Note: if you want to call expression, but you have no arguments,
    //    just use parenthesis, like "(print)" instead of "print"
    //
    // 2. if eval got one string parameter and more than 0 arguments it makes
    //    'apply' to them - (apply arg0 args),
    //    it can be used as quick way to evaluate function by name with parameters.
    //
    // 3. if eval got one numerical parameter and maybe more than 0 arguments,
    //    this case means case 2, but with function referenced not by name but by
    //    'pin' id. So function must be pinned object.
    //
    // 4. at last if eval received bytevector it tries to decode it as fasl object
    //    and evaluate like 2 or 3.

    // new function declaration:
    r = eval("(define (f x) (if (eq? x 0) 1 (* x (f (- x 1)))))");
    assert (r != IFALSE);

    // call the function with arguments
    r = eval("f", 7);
    assert (r == make_integer(5040)); // and check the result

    // working with precompiled scripts:
    char causar[] = {2, 16, 26, 11, 1, 0, 21, 1, 1, 3, 4, 1, 1, 2, 5, 5, 5, 8, 4, 5, 5, 3, 4, 8, 3, 2, 5, 3, 17, 2, 16,
                     16, 11, 1, 0, 11, 1, 1, 3, 4, 1, 1, 2, 3, 2, 4, 1, 17, 2, 16, 35, 11, 1, 0, 30, 1, 1, 2, 4, 1, 1,
                     3, 5, 1, 1, 4, 6, 4, 4, 2, 2, 5, 6, 7, 9, 4, 5, 5, 3, 4, 7, 3, 2, 5, 3, 17, 2, 16, 30, 11, 2, 0,
                     10, 14, 19, 5, 19, 2, 5, 4, 6, 24, 6, 11, 3, 0, 11, 14, 19, 6, 19, 3, 6, 4, 5, 7, 24, 7, 17, 2, 16,
                     12, 11, 3, 0, 7, 40, 4, 5, 6, 7, 24, 6, 17, 1, 17, 2, 3, 4, 2, 16, 61, 11, 1, 0, 56, 1, 1, 2, 4, 1,
                     1, 3, 5, 10, 4, 5, 3, 6, 16, 5, 30, 0, 1, 2, 2, 7, 1, 1, 4, 8, 1, 1, 5, 9, 4, 4, 2, 3, 8, 9, 3, 14,
                     1, 11, 5, 5, 4, 11, 5, 2, 7, 3, 1, 1, 4, 7, 205, 3, 2, 7, 1, 17, 1, 17, 3, 1, 3, 7, 2, 16, 40, 11,
                     3, 0, 35, 1, 1, 2, 6, 47, 6, 4, 7, 1, 2, 2, 8, 1, 1, 4, 9, 3, 6, 2, 3, 9, 4, 3, 5, 3, 1, 1, 3, 5,
                     9, 7, 4, 2, 8, 3, 17, 1, 17, 3, 1, 5, 2, 2, 16, 46, 11, 1, 0, 41, 1, 1, 3, 4, 1, 1, 4, 5, 3, 5, 2,
                     4, 4, 5, 3, 6, 36, 4, 4, 1, 2, 2, 8, 1, 1, 2, 9, 3, 5, 2, 3, 6, 3, 9, 3, 14, 1, 5, 2, 8, 3, 17, 1,
                     17, 4, 1, 7, 6, 2, 2, 16, 25, 11, 3, 0, 20, 36, 4, 6, 1, 1, 2, 7, 6, 5, 3, 3, 4, 5, 3, 9, 6, 4, 2,
                     7, 2, 17, 1, 17, 3, 1, 10, 2, 0};
    // and we have a message
    char message[] = {68, 111, 108, 102, 104, 35, 100, 113, 103, 35, 69, 114, 101, 35, 122, 100, 113, 119, 35, 119, 114,
                      35, 105, 111, 108, 115, 35, 100, 35, 102, 114, 108, 113, 35, 101, 124, 35, 119, 104, 111, 104, 115,
                      107, 114, 113, 104, 49};

    r = embed_eval(&ol, new_bytevector(&ol, causar, sizeof(causar)/sizeof(causar[0])),
                        new_bytevector(&ol, message, sizeof(message)/sizeof(message[0])),
                        make_integer(3), 0);
    assert (is_bytevector(r));
    assert (bytevector_length(r) == 47);
    assert (strncmp(bytevector_value(r), "Alice and Bob want to flip a coin by telephone.", 47) == 0);

    // finally, please check extensions/embed/sample.c code for more embed examples

    return 0;
}
```

Just compile with -DEMBEDDED_VM and link with repl binary.

Another complex sample can be found in samples/pacman/ folder.


EMBEDDED OL IN DETAIL
---------------------

Please refer to the [project page](https://yuriy-chumak.github.io/ol/)


DOCUMENTATION
-------------

Please refer to the [project page](https://yuriy-chumak.github.io/ol/)

Or check the source codes - libraries/scheme/core.scm


RELATED
--------------------------------------------------------------

Copyright (c) 2014 Aki Helin,
Copyright (c) 2014 - 2019 Yuriy Chumak

Grew out of the Owl Lisp by Aki Helin: https://gitlab.com/owl-lisp/owl

* http://groups.csail.mit.edu/mac/projects/scheme/
* http://people.csail.mit.edu/jaffer/Scheme
* http://r7rs.org
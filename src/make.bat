@set PATH=C:\Program Files\Emscripten\python\2.7.5.3_64bit\;C:\Program Files\Emscripten\emscripten\1.35.0\;%PATH%
ol compile.lisp >program.c
emcc program.c oljs.c -D__EMSCRIPTEN__ -o oljs.html -s ASYNCIFY=1

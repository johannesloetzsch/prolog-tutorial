/*usr/bin/env scryer-prolog "$0" "$@" ; exit #*/

/**
The first line of this file contains the „magic“ :)

It is both valid shell script as a prolog comment.

More infos can be found [here](learn/shebang.html)
*/


/*
The next line is optional. It was added to include this file in the documentation created by DocLog.
*/

:- module(shebang, [ (main)/0 ]).


%% main
%
%  The main function is getting started because of
%
%  ```
%  :- initialization(main).
%  ```

main :- write(hello), nl, halt.

:- initialization(main).

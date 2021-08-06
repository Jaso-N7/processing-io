
# Table of Contents

1.  [Processing-Io](#org4348361)
    1.  [Introduction](#org1ef4411)
    2.  [Usage](#org23ba11a)
        1.  [(saying-hello)](#org7ec3493)
        2.  [(counting-chars)](#org3d52d97)
        3.  [(run-count-chars)](#org8a9f9b6)
        4.  [(printing-quotes)](#orgcac4a23)
        5.  [(madlib)](#orga2411d1)
        6.  [(simple-math)](#orgf83ae13)
        7.  [(run-simple-maths)](#org4dc99d4)
        8.  [(retirement-calculator)](#orgae94a5d)
    3.  [Installation](#orge7bf7ce)
        1.  [Testing the system](#orgbcaed5c)
    4.  [Author](#org13a9876)
    5.  [Copyright](#org2fce5a5)
    6.  [License](#org4a769d5)


<a id="org4348361"></a>

# Processing-Io


<a id="org1ef4411"></a>

## Introduction

Utilizing the challenges from "Exercises for Programmers 57 Challenges to Develop your Coding Skills
by Brian P. Hogan" to get acquainted with accepting input from the user, processing it and producing output
in Common Lisp. 

I opted to use the Model-View-Controller (MVC) approach in this challenge. The packages/files are named accordingly
except the Controller. The controller package is \`\`\`processing-io\`\`\` and all the functions are in the \`\`\`main.lisp\`\`\`
file.


<a id="org23ba11a"></a>

## Usage

These are the functions relating to the challenges:


<a id="org7ec3493"></a>

### (saying-hello)

Create a program that prompts for your name and prints
a greeting using your name.

1.  Constraints

    Completed

2.  Challenges

    TODO: Different greetings for different people.


<a id="org3d52d97"></a>

### (counting-chars)

Create a program that prompts for an input string and displays output that shows the input string and the number of
characters the string contains.

1.  Constraints

    Completed

2.  Challenges

    Completed - see (RUN-COUNT-CHARS)


<a id="org8a9f9b6"></a>

### (run-count-chars)

Same as (COUNTING-CHARS), except this will start a Graphical User Interface (GUI) built with IUP.

TODO: Attempt a web-based version of this solution.


<a id="orgcac4a23"></a>

### (printing-quotes)

Create a program that prompts for a quote and an author.
Display the quotation and author as shown in the example
output.

1.  Constraints

    Completed

2.  Challenges

    Completed


<a id="orga2411d1"></a>

### (madlib)

Create a simple mad-lib program that prompts for a noun,
a verb, an adverb, and an adjective and injects those into a
story that you create.

1.  Constraints

    Completed

2.  Challenges

    Incomplete


<a id="orgf83ae13"></a>

### (simple-math)

Write a program that prompts for two numbers. Print the
sum, difference, product, and quotient of those numbers .

1.  Constraints

    Completed

2.  Challenges

    Completed - See also (RUN-SIMPLE-MATHS)


<a id="org4dc99d4"></a>

### (run-simple-maths)

GUI version of SIMPLE-MATH. Would be interesting to try as a web-based version.


<a id="orgae94a5d"></a>

### (retirement-calculator)

A program that determines how many years you have
left until retirement and the year you can retire. It should
prompt for your current age and the age you want to retire
and display the output.

1.  Constraints

    Completed

2.  Challenges

    Completed


<a id="orge7bf7ce"></a>

## Installation

Git clone this library to your \`\`\`quicklisp\local-projects\`\`\` directory.

Running the Graphical Interface requires IUP. This project uses the CL libray from [lispnik/iup](https://github.com/lispnik/iup/).
Just follow the instructions from there, and once they are cloned to the 
quicklisp/local-projects directory.

\`\`\`CL-USER> (ql:quickload '("tecgraf-base" "pffft" "iup" "processing-io"))\`\`\`
\`\`\`CL-USER> (use-package :processing-io)\`\`\`


<a id="orgbcaed5c"></a>

### Testing the system

\`\`\`CL-USER> (asdf:test-system "processing-io")\`\`\`


<a id="org13a9876"></a>

## Author

-   Jason Robinson (jasonsrobinson@protonmail.com)


<a id="org2fce5a5"></a>

## Copyright

Copyright (c) 2021 Jason Robinson (jasonsrobinson@protonmail.com)


<a id="org4a769d5"></a>

## License

Licensed under the BSD-3 License.


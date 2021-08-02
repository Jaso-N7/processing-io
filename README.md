
# Table of Contents

1.  [Processing-Io](#org41b19ad)
    1.  [Introduction](#orgbe85722)
    2.  [Usage](#org41f06b9)
        1.  [Loading the System](#orgddc5e47)
        2.  [Testing the System](#org6ad938c)
        3.  [Actions](#org2138f5d)
    3.  [Installation](#org00b9dfc)
    4.  [Author](#org05f5675)
    5.  [Copyright](#org5a5c1ae)
    6.  [License](#org044014a)


<a id="org41b19ad"></a>

# Processing-Io


<a id="orgbe85722"></a>

## Introduction

Getting acquainted with how to get input from the user and process it to produce output.


<a id="org41f06b9"></a>

## Usage


<a id="orgddc5e47"></a>

### Loading the System

Running the Graphical Interface requires IUP. I am using the CL libray by [lispnik/iup](https://github.com/lispnik/iup/).
Just follow the instructions and you will be setup just fine. I cloned the git repos to
my quicklisp/local-projects directory.

To load the system \`(asdf:load-system "processing-io")\`, then \`(in-package :processing-io)\`
to start using the functions.


<a id="org6ad938c"></a>

### Testing the System

For testing \`(asdf:test-system "processing-io")\`


<a id="org2138f5d"></a>

### Actions

To actually use the system, the following are exported from \`processing-io\` and can be run from
the REPL:
\`(in-package :processing-io)\`
then

\`(saying-hello)\`
\`(counting-chars)\`
\`(run-count-chars)\`


<a id="org00b9dfc"></a>

## Installation

Git clone this library to your \`quicklisp\local-projects\` directory and start using.


<a id="org05f5675"></a>

## Author

-   Jason Robinson (jasonsrobinson@protonmail.com)


<a id="org5a5c1ae"></a>

## Copyright

Copyright (c) 2021 Jason Robinson (jasonsrobinson@protonmail.com)


<a id="org044014a"></a>

## License

Licensed under the BSD-3 License.


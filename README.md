
# Table of Contents

1.  [Processing-Io](#org1b17a40)
    1.  [Introduction](#orgc560630)
    2.  [Usage](#org1a40728)
    3.  [Installation](#orgf5a4dc9)
        1.  [Testing the system](#org4187e60)
    4.  [Author](#orgf0971c6)
    5.  [Copyright](#orgeffe826)
    6.  [License](#orgec0a5fd)


<a id="org1b17a40"></a>

# Processing-Io


<a id="orgc560630"></a>

## Introduction

Getting acquainted with how to get input from the user and process it to produce output.


<a id="org1a40728"></a>

## Usage

\`(saying-hello)\`
\`(counting-chars)\`
\`(run-count-chars) ; This runs the IUP GUI\`


<a id="orgf5a4dc9"></a>

## Installation

Git clone this library to your \`quicklisp\local-projects\` directory.

Running the Graphical Interface requires IUP. This project uses the CL libray from [lispnik/iup](https://github.com/lispnik/iup/).
Just follow the instructions from there, and once they are cloned to the 
quicklisp/local-projects directory.

\`CL-USER> (ql:quickload '("tecgraf-base" "pffft" "iup" "processing-io"))\`
\`CL-USER> (use-package :processing-io)\`


<a id="org4187e60"></a>

### Testing the system

\`CL-USER> (asdf:test-system "processing-io")\`


<a id="orgf0971c6"></a>

## Author

-   Jason Robinson (jasonsrobinson@protonmail.com)


<a id="orgeffe826"></a>

## Copyright

Copyright (c) 2021 Jason Robinson (jasonsrobinson@protonmail.com)


<a id="orgec0a5fd"></a>

## License

Licensed under the BSD-3 License.


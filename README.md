# heist  /  scmcalc
heist: a simple lexer/parser for Scheme programming language

scmcalc: a Scheme calculator that can used for integer arithmetic 

CSE 30151: Theory of Computing

Course Project 1: February 26, 2016

Created by:
*Tim Chang
*Chris Syers
*Mitchell Troy

## Installation
To use heist and scmcalc, clone this repository using one of the following URLS:

HTTPS: `git clone https://github.com/timzchang/Theory-CP1.git`

SSH: `git clone git@github.com:timzchang/Theory-CP1.git`

Enter the repository's directory:

`cd Theory-CP1`

Enter command `make` to build both heist and scmcalc. Enter command `make heist` to make only heist. Enter command `make scmcalc` to make only scmcalc. Enter command `make clean` to remove all files created in the building process, as well as the executables.

## Usage
### heist
To use the heist tool, enter a command of the following form while in the Theory-CP1 directory:

`./heist [-parse] sourcefile.scm`

The `-parse` command line option is not required. `sourcefile.scm` is a Scheme source file. The program will tell you if `sourcefile.scm` is a valid Scheme program. If there is a scanning error, the program will exit with error code 1 and display a somewhat helpful error message with clues to what the error was. If there is a parsing error in the source file, heist will exit with error code 1, and display a generic error message with no clues to where the error occured.
### scmcalc
To use the scmcalc tool, enter a command of the following form while in the Theory-CP1 directory:

`./scmcalc [-parse] sourcefile.scm`

Once again the `-parse` command line option is not required. `sourcefile.scm` is a Scheme source file. If `sourcefile.scm` is a valid arithmetic construction of Scheme (using only +, -, /, and *), `scmcalc` successfully parse the file and return the value of the arithmetic expression. If there is a scanning error, it will exit with error code 1 and display a message. If the file does not parse as a valid arithmetic expression, `scmcalc` will exit with error code 1 and display an error message.

An example of a valid Scheme arithmetic expression file (example.scm) is:

`(+ (* 2 3) 5)`

Running this through scmcalc produces the following result:

  $ ./scmcalc example.scm
  successful parse
  result is: 11


## Contributing
1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request
## History
version 1: February 25, 2016
## Credits

###Project Creators:
*Tim Chang
*Chris Syers
*Mitchell Troy

###Project Contributors
*

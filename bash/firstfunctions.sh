#!/bin/bash
# This script demonstrates processing the command line using functions for help and error message handling

# Task: Add a debug option and a verbose option to this script. Both options should set a variable if
#       they appear on the command line when the script is run. The debug option is '-d' and should set
#       a variable named 'debug' to the value "yes". The verbose option is '-v' and should set a variable
#       named 'verbose' to yes. The debug and verbose variables should be set to 'no' if the user did not
#       give the option for them on the command line when running the script. After the command line is
#       processed, the script should print out 2 lines to indicate if the verbose and debug options are
#       set to yes or no.
#VARIABLES ASSIGINING
debug="no"
verbose="no"

##############
# FUNCTIONS
##############
# Define functions for error messages and displaying command line help.
function message {
echo "Usage:$0 [-h | --help] [-d <level> | -- debug <level>] [-v | --verbose]"
}
function errormessage {
  echo "$@" >&2
}

##################
# CLI Processing
##################
# Process the command line options, saving the results in variables for later use.
while [ $# -gt 0 ]; do

    case "$1" in

          -h|--help)

                message

                      exit 0

                            ;;

                                -v|--verbose)

                                      verbose="yes"

                                            ;;

                                                -d|--debug)

                                                      debug="yes"

                                                            ;;

                                                                *)

                                                                      errormessage "I don't know what '$1' is. Sorry."

                                                                            errormessage "$(message)"

                                                                                  exit 1

                                                                                        ;;

                                                                                      esac

                                                                                        shift
                                                                                      done

                                                                                      echo "Debug Mode State is $debug and Verbose Mode State is $verbose"

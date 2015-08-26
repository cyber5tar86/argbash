#!/bin/bash

# ARG_POSITIONAL_SINGLE([filename])
# ARG_OPTIONAL_SINGLE([unit],[u],[What unit we accept (b for bytes, k for kilobytes, M for megabytes)],[b])
# ARG_VERSION([echo $0 v0.1])
# ARG_OPTIONAL_BOOLEAN([verbose])
# ARG_HELP()
# ARGBASH_GO()
# needed because of Argbash --> m4_ignore([
### START OF CODE GENERATED BY ARGBASH v1.0.0 one line above ###
# THE DEFAULTS INITIALIZATION
_ARG_UNIT=b
_ARG_VERBOSE=off

# THE PRINT HELP FUNCION
function print_help
{
	echo "Usage: $0 <filename> [--unit <arg>] [--version] [--(no-)verbose] [--help]"
	echo -e "\t<filename>: Positional arg"
	echo -e "\t-u,--unit: What unit we accept (b for bytes, k for kilobytes, M for megabytes) (default: 'b')"
	echo -e "\t-v,--version: Prints version"
	echo -e "\t--verbose,--no-verbose:  (default: 'off')"
	echo -e "\t-h,--help: Prints help"
}
# THE PARSING ITSELF
while test $# -gt 0
do
	_key="$1"
	case "$_key" in
		-u|--unit)
			test $# -lt 2 && { echo "Missing value for the positional argument." >&2; exit 1; }
			_ARG_UNIT="$2"
			shift
			;;
		-v|--version)
			echo $0 v0.1
			exit 0
			;;
		--no-verbose|--verbose)
			_ARG_VERBOSE="on"
			test "${1:0:5}" = "--no-" && _ARG_VERBOSE="off"
			;;
		-h|--help)
			print_help
			exit 0
			;;
		*)
		    	POSITIONALS+=("$1")
		    	# unknown option
			;;
	esac
	shift
done

POSITIONAL_NAMES=('_ARG_FILENAME' )
test ${#POSITIONALS[@]} -lt 1 && { ( echo "FATAL ERROR: Not enough positional arguments."; print_help ) >&2; exit 1; }
test ${#POSITIONALS[@]} -gt 1 && { ( echo "FATAL ERROR: There were spurious positional arguments."; print_help ) >&2; exit 1; }
for (( ii = 0; ii <  ${#POSITIONALS[@]}; ii++))
do
	eval "${POSITIONAL_NAMES[$ii]}=\"${POSITIONALS[$ii]}\""
done
# OTHER STUFF GENERATED BY Argbash


# ] <-- needed because of Argbash)

#!/bin/bash
#
#
#
#sample function usage in bash
#
#3#################################################################
ramu(){
	echo "Hello my self '$1'"
}
ramu "chinni krishna"

#################################################################
addition(){
	echo "sum of '$1' and '$2' numbers is $(($1 + $2))"
}
addition 10 99


###################################################################
#
_product(){
	echo "product of '$1' and '$2' is $(($1*$2))"
}

_product 10 20
#################################################
#
#YOU CAN ALSO USE FUNCTION WITHOUT PASSING THE ARDUMENTS
#
#
FUNC1(){
	echo "these are sample scripts to understand functions"
}

FUNC1

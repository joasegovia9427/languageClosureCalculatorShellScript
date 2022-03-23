#!/bin/bash
echo Calculadora PC de lenguaje
echo parametro1: $1 
echo parametro2: $2
echo parametro3: $3
echo parametro4: $4

let chain1="a"
let chain2="bb"
let chain3="L"
let chain4

if [[ ! -z $1 ]]; then
	chain1=$1
fi
if [[ ! -z $2 ]]; then
	chain2=$2
fi
if [[ ! -z $3 ]]; then
	chain3=$3
fi
if [[ ! -z $4 ]]; then
	chain4=$4
fi

echo chain1: $chain1
echo chain2: $chain2
echo chain3: $chain3
echo chain4: $chain4

let lenguageResult 
let stringToApend 
let resultadoAux
resultadoAux=$resultadoAux"L, "

declare -a arrayInit=()
declare -a arrayIncremental=()

if [[ ! -z $1 ]]; then
	arrayInit+=($chain1)
    arrayIncremental+=($chain1)
    resultadoAux=$resultadoAux$chain1", "
fi
if [[ ! -z $2 ]]; then
	arrayInit+=($chain2)
    arrayIncremental+=($chain2)
    resultadoAux=$resultadoAux$chain2", "
fi
if [[ ! -z $3 ]]; then
	arrayInit+=($chain3)
    arrayIncremental+=($chain3)
    resultadoAux=$resultadoAux$chain3", "
fi
if [[ ! -z $4 ]]; then
	arrayInit+=($chain4)
    arrayIncremental+=($chain4)
    resultadoAux=$resultadoAux$chain4", "
fi

for i in 1 2 3
do
	for chain in ${arrayIncremental[@]}; do
		for chain2 in ${arrayInit[@]}; do
			stringToApend=$chain$chain2
            arrayIncremental+=($stringToApend)
            resultadoAux=$resultadoAux$chain$chain2", "
		done
	done
done
                  
lenguageResult=$resultadoAux
lenguageResult=$lenguageResult" ... "

echo ===========  Final lenguageResult is::  =============
echo $lenguageResult
echo ========================
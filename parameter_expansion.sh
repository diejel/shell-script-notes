#!/bin/bash
clear;
echo "This script shows the := syntax use for unset variables and variable expansion
-----------------------------------------------------------------------------------"

name=""
alias="pimpo"
echo "name var is empty -> name:$name
alias var is -> alias:$alias"

echo "Will be tested the parameter expansion by active use of echo command:"
echo  'echo ${name:=$alias}'

echo "Result of the command above: ${name:=$alias}"
echo "Actual values of the vars -> alias:$alias and name:$name"
echo "---------------------------------------------------------"
echo "Explanation: due to the name var is initially empty, at applying param expansion, name var will assume the alias content.If name var had not been empty, even applying param expansion it will remain its original value"

echo "============================================================================
"
echo "This script shows the = syntax use for unset variables and variable expansion
-----------------------------------------------------------------------------------"

name=""
alias="pimpo2"

echo "lastname var is missing, is not detailed and no exist -> 
alias var is defined -> alias:$alias"

echo "Will be tested the parameter expansion by active use of echo command:"
echo  'echo ${lastname=$alias}, remember lastname is a variable that not exists'

echo "Result of the command above: ${lastname=$alias}"
echo "Actual values of the vars -> alias:$alias and lastname:$lastname"

echo "---------------------------------------------------------"
echo "Explanation: due to the lastname var does not exist, at applying param expansion, lastname var will assume the alias content.If name var had been declared, even being empty, it will maintain its original value, but since it is missing in the code, using this type of param expansion, it will replace the value of this missing var with the value of alias variable"

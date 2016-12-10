#!/bin/bash

### Variables globales ###

DISTRO=$1

### Funciones ###
### Las funciones DEBEN de ser definidad antes de ser utilizada ### 
### Por eso se definen en la parte de arriba del script ###
{	 
last | head -n 5
if [[ $# == 2 ]]
then
	echo "El numero de parametro es 2"
else 
	echo "El numero de parametro no es 2, es $#"
fi
}

case $DISTRO in 
	ubuntu)
		echo "Distro Soportada"
		informacion
	;;
	centos)
		echo "Distro Soportada"
		informacion
	;;
	debian)
		echo "Distro Soportada"
		informacion
	;;
	*)
		echo "Distro NO soportada"
esac

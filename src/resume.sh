#!/bin/bash

# este script requiere 3 parametros
# ./resumen.shell <param1> <param2> <param3> 

# definiocion de variables 

PARAMETROS=3 
VERSION_BASH="4.3.46"
CONTADOR=1

# Evaluar si la distro de ubuntu y la version de bash 
# es 4.3.46

if 
	[[ `echo $BASH_VERSION | cut -d "(" -f1` == $VERSION_BASH || `lsb_release -i | awk '{print $3}'` == ubuntu ]]
	then
		echo "Version de bash $VERSION_BASH correcta!"
else 
	echo "ERROR:
	La version de BASH no es compatible con el script
	Necesita la version $VERSION_BASH"
	exit 1
fi

if [[ $# != $PARAMETROS ]]
then 
	echo "Error:
	la forma de utilizar el scrip es la siguiente
	$0 <param1> <param2> <param3>
	"
	exit 1

else
	echo "El numero de parametros fue correcto, y son $#"
	
	#Para igualdades uso ==
	if [[ $2 == perro ]]
	then
		echo "El parametro dos es perro!"
	else
		echo "El parametro dos no es perro"
	fi
fi

echo "Los parametros fueron"
echo "$@"

#Impresion de los Parametros
for i in $*
do 
	echo "Los resultados para el primer for fueron: $i"
done

#Impresion de los Elementos
for d in alto otro caso
do 
 	echo "Elemento #$CONTADOR del segundo for es: $d"
	let "CONTADOR=$CONTADOR+1"
done

echo "
	El valor del contador es $CONTADOR
	"

#Rango de Numeros
for m in {1..3}
do 
	echo "El contador es $CONTADOR y el nuemero es $m"
	((CONTADOR++))
done 

exit 0

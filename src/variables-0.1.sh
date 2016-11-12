#!/bin/bash 

echo "Primera prueba de con variables en el archivo .bashrc"
echo El $VAR1 sale a correr. 
echo EL $VAR2 se encuentra en el taller. 
echo La $VAR3 esta dentro de la casa.

# Ejemplo de redireccion de datos#

WRKDIR=`pwd`
OUTDIR=$WRKDIR/../misc

echo $WRKDIR
echo $OUTDIR

cp -v casa perro $OUTDIR/ >> $OUTDIR/out.log 2>> $OUTDIR/error.log 

## Ejemplo de expresiones regulares 

OBJETIVO=dhcpd.conf
SALIDA=clientes_ocupados.log

grep -v "#" dhcpd.conf | sed '/^\s*$/d' | grep fixed | cut -d " " -f2 | sed 's/;//' | cut -d "." -f4 > clientes_ocupados.log > $SALIDA

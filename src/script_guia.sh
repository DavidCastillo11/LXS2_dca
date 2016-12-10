#!/bin/bash

errorlog="$0.err"

#la Salida estandar de error estara redireccionada al archivo if-then.sh.err
if cp archivo1.txt archivo1.txt.bck 2> $errorlog
then 
	echo "El archivo1.txt fue correctamente respaldado"
	echo "eliminando archivo original"
	#Ejemplo de un "if" aninado, una condicion contenida dentro de otra....
	if rm archivo.txt
	then
	  echo "el archivo original fue eliminado correctamente"
	else
	echo "NO se pudo eliminar el archivo..."
	fi
else 
	echo "El archivo1.txt no pudo ser respaldado, verifique el log: $errorlog"
fi


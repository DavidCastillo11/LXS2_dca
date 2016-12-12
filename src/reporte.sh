#!/bin/bash


REPORTE=reporte-`date +%Y%m%d`.log

echo "REPORTE GENERADO POR $USER:" > $REPORTE
echo " " >> $REPORTE
echo " " >> $REPORTE

echo "#######################################" >> $REPORTE
echo "#Interfaces disponibles en el servidor#" >> $REPORTE
echo "#######################################" >> $REPORTE
echo " " >> $REPORTE

ifconfig >> $REPORTE

echo "####################################" >> $REPORTE
echo "#Puertos habilitados en el servidor#" >> $REPORTE
echo "####################################" >> $REPORTE
netstat -lautp | grep LISTEN >> $REPORTE

echo "####################################" >> $REPORTE
echo "#Paso de variable por env#" >> $REPORTE
echo "####################################" >> $REPORTE
echo " " >> $REPORTE

echo "El Contenido de \$MI_VAR es: $MI_VAR"

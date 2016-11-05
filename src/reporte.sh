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

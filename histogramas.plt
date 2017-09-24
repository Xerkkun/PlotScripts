#
# Este es un script(macro) de gnuplot
# se usa para generar graficas de manera automatica.
#La siguiente linea producira una copia impresa de la grafica
set terminal png
set output "grafica.png"
#
#
#
#
#
set style histogram rowstacked gap 0
set style fill solid 0.5 border lt -1
plot "1.dat" smooth freq with boxes
#
#
#
#

#
# Este es un script(macro) de gnuplot
# se usa para generar graficas de manera automatica.
#La siguiente linea producira una copia impresa de la grafica
#------------------------------------------------------------------
set terminal png font arial 14 size 800,600
set output "ran1.png"
#La siguiente linea coloca la clave abajo a la izquierda
set key left
#Etiqutetas de los ejes
set title 'Traza a 1000 ciclos'
set xlabel "x"
set ylabel "y"
plot "traza1_act3_ran1.dat" u 1:2 with lines title "Traza1", "traza2_act3_ran1.dat" u 1:2 with lines title "Traza2", "init_act2_ran1.dat" u 1:2 pt 7 title "Inicial"

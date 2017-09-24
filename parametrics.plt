#
# Este es un script(macro) de gnuplot
# se usa para generar graficas de manera automatica.
#La siguiente linea producira una copia impresa de la grafica
#------------------------------------------------------------------
set terminal png font arial 14 size 800,600
set output "pi1.png"
set parametric
set size square
unset key
#Etiqutetas de los ejes
set title 'Aproximacion de pi'
set xlabel "x"
set ylabel "y"
plot "1.dat", cos(t),sin(t)

# gnu plot
set key autotitle columnhead
set ylabel "Time in milliseconds"

stats '../output/lcs' using 1:2
set title 'Longest Common Substring N vs Time (ms)'
set xlabel "N"
n = STATS_max_x
t = STATS_max_y
a = t / (n**3)
f(x) = a*(x**3)
set yrange [0:t]
set xrange [0:n]
plot '../output/lcs' using 1:2 lw 3 , f(x) lw 3
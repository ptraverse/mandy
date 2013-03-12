### Reproduced from http://tolstoy.newcastle.edu.au/R/help/05/10/13198.html
### Written by Jarek Tuszynski, PhD.

library(fields) # for tim.colors
library(caTools) # for write.gif
m = 400 # grid size
C = complex( real=rep(seq(-1.8,0.6, length.out=m), each=m ),
imag=rep(seq(-1.2,1.2, length.out=m), m ) )
C = matrix(C,m,m)


Z = 0
X = array(0, c(m,m,60))
for (k in 1:60) {
Z = Z^2+C
X[,,k] = exp(-abs(Z))
}
image(X[,,k], col=tim.colors(256)) # show final image in
write.gif(X, "Mandelbrot2.gif", col=tim.colors(256), delay=10)

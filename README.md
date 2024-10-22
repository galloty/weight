# weight
Compute the weight of a sequence of primes of the form *k*&nbsp;&middot;&nbsp;*b*<sup>*n*</sup>&nbsp;+&nbsp;*a*

## About

Let *k*&nbsp;&ge;&nbsp;1, *b*&nbsp;&ge;&nbsp;2 and *a*&nbsp;&ne;&nbsp;0 be integers. We search for an estimate of the number of primes in the sequence of numbers of the form *P*(*n*) = *k*&nbsp;&middot;&nbsp;*b*<sup>*n*</sup>&nbsp;+&nbsp;*a* for 1 &le; *n* &le; *N*. It is expected to be *C*(*k*,&nbsp;*b*,&nbsp;*a*) &middot; Sum<sub>1&nbsp;&le;&nbsp;*n*&nbsp;&le;&nbsp;*N*</sub> 1&nbsp;/&nbsp;log&nbsp;*P*(*n*).  

**weight** computes an approximation of the constant *C*(*k*,&nbsp;*b*,&nbsp;*a*).  

It is a PARI/GP program. It can be executed in [Run PARI/GP in your browser](https://pari.math.u-bordeaux.fr/gpwasm.html) if *N*<sub>0</sub> and *P*<sub>0</sub> are not too large (for instance, *N*<sub>0</sub> = *P*<sub>0</sub> = 400,000).



See Yves Gallot, [On the number of primes in a sequence](https://github.com/galloty/weight/tree/main/doc/weight.pdf) for more details and the definition of *N*<sub>0</sub> and *P*<sub>0</sub>.

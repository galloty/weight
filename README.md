# weight
Compute the weight of Proth numbers

## About

Let *k* be an odd positive integer. We search for an estimate of the number of primes in the sequence of numbers of the form *P*(*k*, *n*) = *k*&nbsp;&middot;&nbsp;2<sup>*n*</sup>&nbsp;+&nbsp;1 for 1 &le; *n* &le; *N*. It is expected to be *C*<sub>*k*</sub> Sum<sub>1&nbsp;&le;&nbsp;*n*&nbsp;&le;&nbsp;*N*</sub> 1&nbsp;/&nbsp;log&nbsp;*P*(*k*,&nbsp;*n*).  

**weight** computes an approximation of *C*<sub>*k*</sub> and is optimized for a large range of *k*.  

**weight_gen** computes an approximation of the weight for *P*(*k*,&nbsp;*b*,&nbsp;*a*,&nbsp;*n*) = *k*&nbsp;&middot;&nbsp;*b*<sup>*n*</sup>&nbsp;+&nbsp;*a*. It is optimized for a single triplet (*k*,&nbsp;*b*,&nbsp;*a*).  

See Yves Gallot, [On the number of primes in a sequence](https://github.com/galloty/weight/tree/main/doc/weight.pdf) for more details and the definition of p_max (*P*<sub>0</sub>) and n_max (*N*<sub>0</sub>).

## Build

This version is compiled with gcc.

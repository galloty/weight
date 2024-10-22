/*
Copyright 2024, Yves Gallot

weight is free source code, under the MIT license (see LICENSE). You can redistribute, use and/or modify it.
Please give feedback to the authors if improvement is realized. It is distributed in the hope that it will be useful.

weight computes the 'weight' of the sequence k * b^n + a for fixed k, b, a.
See On the number of primes in a sequence (doc/weight.pdf).
*/

weight_s(sieve, p)=
{
	N = #sieve;
	count = N; for (n = 1, N, if (sieve[n] == 1, count--));
	w = exp(Euler) * log(p) * count / N;
	return (w);
}

weight(k, b, c, N, P)=
{
	sieve = vectorsmall(N);
 
	d = 10;
	forprime (p = 2, P,
		k_p = Mod(k, p); b_p = Mod(b, p);
		if ((k_p != 0) && (b_p != 0),
			s = znlog(-(c / k_p), b_p);
			if (cmp(s, []) != 0,
				o = znorder(b_p);
				if (s == 0, s = o);
				forstep (n = s, N, o, sieve[n] = 1);
			);
		);
		if (p > 2^d,
			w = weight_s(sieve, p);
			printf("%d*%d^n + %d: N_0 = %d, P_0 = %d, weight = %.8f.\n", k, b, c, N, p, w);
			d++;
		);
	);

	w = weight_s(sieve, P);
	return (w);
}

main()=
{
	k = 67607; b = 2; c = 1;
	N_0 = 2000000; P_0 = 10000000;

	w = weight(k, b, c, N_0, P_0);

	printf("%d*%d^n + %d: N_0 = %d, P_0 = %d, weight = %.8f, %.4f primes/decade.\n", k, b, c, N_0, P_0, w, w * log(10) / log(2));
}

main()
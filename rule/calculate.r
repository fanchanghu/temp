Given:
+ := N X N -> N, $.1+$.2
- := N X N -> N, $.1-$.2
* := N X N -> N, $.1*$.2
/ := N X (N - {0}) -> N, $.1 / $.2
% := N X (N - {0}) -> N, $.1 - $.2 * ($.1 / $.2)
odd := N -> Bool, $%2 == 0

let (x, y) in N X N
odd(x+y)

Prove/Find:
odd(x) xor odd(y)

Proof/Solution:
odd(x) == ((x/2).2 == 1)
odd(x) == exist(z in N, (x/2 == (z, 1)))
odd(x) == exist(z in N, x == 2*z+1)



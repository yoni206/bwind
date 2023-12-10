# bwind
A bit-width independence solver.

## Usage
```
./bwind.sh <path-to-solver> <path-to-benchmark>
```
where `<path-to-solver>` points to an SMT solver
that supports quantifiers, non-linear arithmetic,
and uninterpreted fucntions.

## Example
```
$ cat tests/test-pbv65.smt2
(set-logic ALL)
(set-option :produce-models true)
(set-option :incremental true)
(declare-const k Int)
(declare-const s (_ BitVec k))
(declare-const t (_ BitVec k))
(assert (distinct (bvsub (_ bv0 k) (bvshl (bvsub s t) (_ bv1 k))) (bvshl (bvsub t s) (_ bv1 k))))
(check-sat)
(exit)

$ ./bwind.sh ~/bin/cvc5 tests/test-pbv65.smt2
unsat
```

## Limitations:

- Assumes a single bit-width, which must be named `k`.
- In particular: no `extract` and `concat`.
- Only supports the following constants: 0, 1, max (denoted 15 or 1111), mins (denoted 8 or 1000), and maxs (denoted 7 or 0111).

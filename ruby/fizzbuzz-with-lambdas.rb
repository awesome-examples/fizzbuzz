// First implemented in https://github.com/sjsyrek/malc

# boolean primitives

TRUE = -> x { -> y { x } }

FALSE = -> x { -> y { y } }

# branching

IF_THEN_ELSE = -> p { -> x { -> y { p[x][y] } } } # IF_THEN_ELSE = ID

# natural numbers

ZERO = -> f { -> x { x } }

ONE = -> f { -> x { f[x] } }

TWO = -> f { -> x { f[f[x]] } }

THREE = -> f { -> x { f[f[f[x]]] } }

# enumeration

SUCC = -> n { -> f { -> x { f[n[f][x]] } } }

PRED = -> n { n[-> p { -> z { z[SUCC[p[TRUE]]][p[TRUE]] } }][-> z { z[ZERO][ZERO] }][FALSE] }

# basic arithmetic

PLUS = -> n { -> m { m[SUCC][n] } }

MINUS = -> n { -> m { m[PRED][n] } }

MULT = -> n { -> m { m[PLUS[n]][ZERO] } }

# more numbers

FOUR = SUCC[THREE]

FIVE = PLUS[TWO][THREE]

SIX = MULT[TWO][THREE]

SEVEN = SUCC[SUCC[SUCC[SUCC[SUCC[SUCC[ONE]]]]]]

EIGHT = PRED[MULT[THREE][THREE]]

NINE = EXP[THREE][TWO]

TEN = MINUS[PLUS[EIGHT][THREE]][ONE]

# comparison

IS_ZERO = -> n { n[-> m { FALSE }][TRUE] }

LESS_THAN_OR_EQUAL = -> n { -> m { IS_ZERO[MINUS[n][m]] } }

# recursion

FIX = -> f { -> x { f[-> y { x[x][y] }] }[-> x { f[-> y { x[x][y] }] }] }

# advanced arithmetic

MOD = FIX[-> r { -> n { -> m { \
  IF_THEN_ELSE[LESS_THAN_OR_EQUAL[m][n]] \
    [-> x { r[MINUS[n][m]][m][x] }] \
    [n] \
  } } } \
]

# pairs

PAIR = -> x { -> y { -> p { p[x][y] } } }

FIRST = -> p { p[-> x { -> y { x } }] }

SECOND = -> p { p[-> x { -> y { y } }] }

# lists

LIST_ELEMENT = -> x { -> xs { PAIR[FALSE][PAIR[x][xs]] } }

EMPTY_LIST = PAIR[TRUE][TRUE]

IS_EMPTY = FIRST

HEAD = -> xs { FIRST[SECOND[xs]] }

TAIL = -> xs { SECOND[SECOND[xs]] }

# fold/map

FOLD = FIX[-> r { -> f { -> z { -> xs { \
  IF_THEN_ELSE[IS_EMPTY[xs]] \
    [z] \
    [-> x { f[HEAD[xs]][r[f][z][TAIL[xs]]][x] }] \
  } } } } \
]

MAP = -> f { \
  FOLD[-> x { -> xs { \
    LIST_ELEMENT[f[x]][xs] \
  } }] \
  [EMPTY_LIST] \
}

# FizzBuzz

FIFTEEN = PLUS[TEN][FIVE]

TWENTY = PLUS[TEN][TEN]

HUNDRED = MULT[TEN][TEN]

F = MULT[TEN][SEVEN]

I = PLUS[HUNDRED][FIVE]

Z = PLUS[HUNDRED][PLUS[TWENTY][TWO]]

B = PLUS[MULT[TEN][SIX]][SIX]

U = PLUS[HUNDRED][PLUS[TEN][SEVEN]]

FIZZ = LIST_ELEMENT[F] \
      [LIST_ELEMENT[I] \
      [LIST_ELEMENT[Z] \
      [LIST_ELEMENT[Z] \
      [EMPTY_LIST]]]]

BUZZ = LIST_ELEMENT[B] \
      [LIST_ELEMENT[U] \
      [LIST_ELEMENT[Z] \
      [LIST_ELEMENT[Z] \
      [EMPTY_LIST]]]]

FIZZBUZZ = LIST_ELEMENT[F] \
          [LIST_ELEMENT[I] \
          [LIST_ELEMENT[Z] \
          [LIST_ELEMENT[Z] \
          [BUZZ]]]]

FIZZBUZZFUNC = MAP[-> n { \
  IF_THEN_ELSE[IS_ZERO[MOD[n][FIFTEEN]]] \
    [FIZZBUZZ] \
    [IF_THEN_ELSE[IS_ZERO[MOD[n][THREE]]] \
      [FIZZ] \
      [IF_THEN_ELSE[IS_ZERO[MOD[n][FIVE]]] \
        [BUZZ] \
        [n] \
    ]] \
}]

# utility functions

To_Bool = -> b { IF_THEN_ELSE[b][true][false] }

From_Bool = -> b { b ? TRUE : FALSE }

To_Int = -> n { n[-> x { x + 1 }][0] }

From_Int = -> n { n == 0 ? -> f { -> x { x } } : -> f { -> x { f[From_Int[n - 1][f][x]] } } }

To_Array = -> xs { [].concat(To_Bool[IS_EMPTY[xs]] ? [] : [HEAD[xs]].concat(To_Array[TAIL[xs]])) }

From_Array = -> xs { xs.length == 0 ? EMPTY_LIST : LIST_ELEMENT[xs[0]][From_Array[xs.drop(1)]] }

To_Array_Int = -> xs { [].concat(To_Bool[IS_EMPTY[xs]] ? [] : [To_Int[HEAD[xs]]].concat(To_Array_Int[TAIL[xs]])) }

From_Array_Int = -> xs { xs.length == 0 ? EMPTY_LIST : LIST_ELEMENT[From_Int[xs[0]]][From_Array_Int[xs.drop(1)]] }

To_String = -> str { To_Array_Int[str].map { | n | n.chr }.join() }

From_String = -> str { str.length == 0 ? EMPTY_LIST : LIST_ELEMENT[From_Int[str[0].ord]][From_String[str[1, str.length]]] }

To_FizzBuzz = -> fb { To_Array[fb].map { | x | To_String[x] == "" ? To_Int[x] : To_String[x] } }

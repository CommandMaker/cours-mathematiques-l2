#import "lib/ui.typ": *

#show: documentProperties

#title[
  Chapitre 3 - Espaces vectoriels
]

#outline()

= Introduction

Faire l'intro j'ai pas le temps maintenant


#definition[
  Soit $(E, +)$ un magma et soit $(KK, +, times)$ un corps. Soit $.$ une loi de composition externe permettant d'associer un élément de $KK$ avec un élément de $E$ afin de construire un élément de $E$.\
  On dit que $(E, +, .)$ est un $KK$-espace vectoriel (ou un espace vectoriel sur $KK$) si :
  - $(E, +)$ est un groupe abélien
  - $forall a,b in E, forall lambda in KK, quad lambda . (a + b) = lambda . a + lambda . b$
  - $forall lambda, mu in KK, forall a in E, quad (lambda + mu) . a = lambda . a + mu . a$
  - $forall lambda, mu in KK, forall a in E, quad (lambda times mu) . a = lambda . (mu . a)$
  - $forall a in E, e_times . a = a$ avec $e_times$ l'élément neutre de la multiplication dans $KK$
]

#example[
  Soit $E = RR^2, thick KK = RR$\
  La loi $+$ sur $RR^2$ est définie par :
  $
  (a_0, a_1) + (b_0, b_1) = (a_0 + b_0, a_1 + b_1)
  $

  $(RR^2, +, .)$ est un $RR$-espace vectoriel. Montrons par exemple que la loi $.$ satisfait bien la première propriété qui la concerne :\
  Soit $a,b in RR^2, thick lambda in R, quad a = (a_0, a_1), b = (b_0, b_1)$\
  $
  lambda . (a + b) &= lambda . (a_0 + b_0, a_1 + b_1)\
  &= (lambda (a_0 + b_0), lambda (a_1 + b_1))\ \
  lambda . a + lambda . b &= lambda . (a_0, a_1) + lambda . (b_0, b_1)\
  &= (lambda times a_0, lambda times a_1) + (lambda times b_0, lambda times b_1)\
  &= (lambda (a_0 + b_0), lambda (a_1 + b_1))
  $

  Donc $lambda . (a + b) = lambda . a + lambda . b$
]

= Exemples d'espaces vectoriels

#example[
  Soit $RR^n := {(a_1, a_2, ..., a_n) bar.v a_i in RR, i in NN}$.\
  La loi $+$ usuelle sur $RR^n$ est définie de la façon suivante :
  $
  (a_1, a_2, ..., a_n) + (b_1, b_2, ..., b_n) = (a_1 + b_1, a_2 + b_2, ..., a_n + b_n)
  $

  La loi $.$ usuelle sur $RR^n$ est définie par :
  $
  forall lambda in RR, quad lambda . (a_1, a_2, ..., a_n) = (lambda times a_1, lambda times a_2, ..., lambda times a_n)
  $

  $(RR^n, +, .)$ est un $RR$-espace vectoriel.
]

#example[
  Soit $RR_n [x]$ l'ensemble des polynômes de degré au plus $n$ à coefficients dans $RR$.

  La loi $+$ est définie comme suit :
  $
  forall P, Q in RR_n [x], quad forall x in RR, (P + Q)(x) = P(x) + Q(x)
  $

  La loi $.$ est définie comme suit :
  $
  forall lambda in RR, forall P in RR_n [x], quad forall x in RR, (lambda . P)(x) = lambda P(x)
  $

  $(RR_n [x], +, .)$ est un $RR$-espace vectoriel.
]

= Vecteurs et familles

#definition[
  Soit $(E, +, .)$ un $KK$-espace vectoriel. Les éléments de $E$ sont appelés des #text(red)[vecteurs] et les éléments de $KK$ sont appelés des #text(red)[scalaires].
]

#property[
  Soit $(E, +, .)$ un $KK$-espace vectoriel, $forall lambda in KK, quad lambda . e_E = e_E$
]

#demo[
  $
  &lambda . (e_E + e_E) = lambda . e_E\
  &<=> lambda . e_E + lambda . e_E = lambda . e_E\
  &<=> lambda . e_E + lambda . e_E + "sym"_+(lambda . e_E) = lambda . e_E + "sym"_+(lambda . e_E)\
  &<=> lambda . e_E + e_E = e_E\
  &<=> lambda . e_E = e_E
  $
]

#property[
  $forall x in E, quad e_(KK,+) . x = e_E$
]

#definition[
  Soit $(E, +, .)$ un $KK$-espace vectoriel et $v_1, v_2, ..., v_n$ $n$ éléments de $E$. On dit que $(v_1, v_2, ..., v_n)$ est une #text(red)[famille] de $E$.
]

#example[
  Dans $RR^2$, $((-6, pi), (1/3, sqrt(2)))$ est une famille de $RR^2$.
]

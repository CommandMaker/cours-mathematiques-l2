#import "lib/lib-ui.typ": documentProperties, docTitle, definition, example, proposition, warning

#show: documentProperties

#docTitle(number: "06")[
  Les matrices
]

#outline()

= Définition

== Introduction

#definition[
  Soit $cal(A)$ un anneau. On appelle #text(fill: red, weight: "medium")[matrice] $p times n$ un tableau à $p$ lignes et $n$ colonnes consitiué d'éléments de $cal(A)$. On note l'ensemble des matrices $cal(M)_(p,n)(cal(A))$ et plus simplement $cal(M)_n(cal(A))$ lorsque $p = n$.
]

Pour $B in cal(M)_(p,n)(cal(A))$ chaque élément du tableau est caractérisé par la ligne $i$ et la colonne $j$ où il se trouve et on le note $b_("ij"), quad i in bracket.l.stroked 1; p bracket.r.stroked, j in bracket.stroked 1; n bracket.r.stroked$ et la matrice $B$ est représentée de la façon suivante :
$
B = mat(b_11, b_12, ..., b_(1n); b_21, b_22, ..., b_(2n); colon.tri.op; b_("p1"), , ..., b_("pn"))
$

On la note aussi parfois
$
  B = (b_"ij"), quad &1 <= i <= p,\ &1 <= j <= n
$

#example[
  $
    mat(2, 3, 5; 1, 2, 7) &in cal(M)_(2,3)(RR)\
                          &in cal(M)_(2,3)(ZZ)\
                          &in cal(M)_(2,3)(ZZ\/8ZZ) \

    mat(1, 3, 6; 2, 5, 4; 1, 0, 3) &in cal(M)_3(RR)
  $
]

== Matrices particulières

On distingue un certain nombres de matrices aux propriétés particulières :

- Le vecteur ligne : $mat(1, 2, 7, 8) in cal(M)_(1,4)(RR)$
- Le vecteur colonne : $mat(1; 2; 7; 8) in cal(M)_(4,1)(RR)$
- La matrice triangulaire inférieure : $mat(1, 0, 0; 2, 0, 4; 3, 1, 4)$ ce qui implique $i > j => b_"ij" = 0$
- La matrice triangulaire supérieure : $mat(2, 0, 3; 0, 1, 5; 0, 0, 4)$ ce qui implique $i < j => b_"ij" = 0$
- La matrice diagonale : $mat(1, 0, 0, 0; 0, 3, 0, 0; 0, 0, -2, 0; 0, 0, 0, 1/4)$ ce qui implique $i eq.not j => b_"ij" = 0$. Elle se note aussi $"Diag"(1, 3, -2, 1/4)$.\ \
- La matrice identité : $mat(1, 0, 0; 0, 1, 0; 0, 0, 1)$ ce qui implique $forall i, b_"ii" = 1 and forall i != j, b_"ij" = 0$\ \
- La matrice nulle : $mat(0, 0, 0, 0; 0, 0, 0, 0) in cal(M)_(2,4)(RR)$ ce qui implique $forall i,j, b_"ij" = 0$. On la note parfois $0_(p,m)(cal(A))$.
- La matrice symétrique : $mat(1, 3, 4, 5; 3, 2, 6, 7; 4, 6, 5, 8; 0, 7, 8, 9) in cal(M)_4(RR)$ ce qui implique $forall i,j, b_"ij" = b_"ji"$.

= Opérations sur les matrices

== Addition de matrices

L'addition de deux matrices revient à effectuer l'addition composante à composante des deux matrices.

#proposition[
  Soit $a in cal(M)_(p,n)(cal(A))$, $B in cal(M)_(p,n)(cal(A))$, on définit la matrice $C = A + B$ comme la matrice $C in cal(M)_(p,n)(cal(A))$ telle que $C_(i j) = A_(i j) + B_(i j)$.
]

#example[
  Soit $cal(A) = RR$
  $
    A &= mat(1, 2, 4; 0, 2, -1), quad B = mat(1, 1, 1; 2, -1, 1)\
    C &= A + B = mat(2, 3, 5; 2, 1, 0)
  $
]

#proposition[
  Soient $A,B,C in cal(M)_(p,n)(cal(A))$ alors
  - $A + B = B + A$
  - $(A + B) + C = A + (B + C)$
  - $0_(p,n)$ est l'élément neutre
  - $forall A in cal(M)_(p,n)(cal(A))$ on construit la matrice $B$ telle que $b_(i j) = "sym"(a_(i j))$

  $(cal(M)_(p,n)(cal(A)), +)$ est donc un groupe commutatif.
]

== Multiplication de matrices

#warning[
  $A times B$ existe si et seulement si le nombre de colonnes de $A$ est égal au nombre de lignes de $B$.
]

#proposition[
  Soient $A in cal(M)_(p,n)(cal(A))$ et $B in cal(M)_(n,s)(cal(A))$, le résultat $A times B in cal(M)_(p,s)(cal(A))$ est la matrice $C in cal(M)_(p,s)(cal(A))$ définie par
  $
    C_(i j) = sum_(k = 1)^n a_(i k) b_(k j)
  $
]

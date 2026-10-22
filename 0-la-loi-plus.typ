#import "lib/ui.typ": definition, property, comment, example
#set text(font: "Lilex Nerd Font Mono")
#set heading(numbering: "1.")
#show link: underline
#show link: set text(fill: blue)
#set list(indent: 1cm)

#title([Chapitre 0 : La loi +])

#outline(
  title: [Table des matières]
)

= Préambule

Ce cours est destiné à ceux ayant déjà une première approche des mathématiques dans le supérieur. Les concepts fondamentaux ne seront que brièvement rappelés. Pour les lecteurs ne connaissant pas les termes abordés ou souhaitant les approfondir, ceux-ci peuvent se réferrer aux #link("https://zanotti.univ-tln.fr/MD")[cours très complets de M. ZANOTTI].

Avant de commencer à proprement parler ce cours, commençons par quelques rappels sur les ensembles mathématiques et les loi de compositions usuelles :
- $NN$ : l'ensemble des entiers naturels
- $ZZ$ : l'ensemble des entiers relatifs
- $QQ$ : l'ensemble des nombres rationnels (éléments de la forme $a/b thick a,b in ZZ$)
- $RR$ : l'ensemble des réels
- $CC$ : l'ensemble des complexes (de la forme $a + i b$ avec $a in RR, b in RR^*$ et $i$ un nombre imaginaire tel que $i^2 = -1$).

Chacun de ces ensembles contient le précédent, on a donc la relation
$
  NN subset ZZ subset QQ subset RR subset CC
$

= Définition et propriétés de l'opérateur $+$

== Sur $NN$

Pour représenter $NN$, on trace une droite graduée de 1 en 1.

#underline[*Règle de calcul de a + b*] : On se positionne sur $a$ sur la droite $NN$ et on avance de $b$ graduations.

On peut déjà définir plusieurs propriétés de cette loi additive que nous venons d'énoncer :

#property[
  La loi $+$ sur $NN$ admet un élément neutre noté $e$. Ici $e = 0$.
]<prop1>

#property[
  La loi $+$ sur $NN$ est associative.
]<prop2>

#property[
  La loi $+$ sur $NN$ est commutative.
]<prop3>


== Sur $ZZ$

Pour représenter $ZZ$, on utilise la une droite graduée avec en son centre $0$, les nombres positifs à droite et les nombres négatifs à gauche du $0$

#underline[*Règle de calcul de a + b*] : On place $a$ sur la droite. Si $b$ est nul ou positif, on avance de $b$ graduations vers la droite, sinon on recule de $b$ graduations.

Cette nouvelle loi additive hérite des propriétés @prop1, @prop2 et @prop3 car $NN subset ZZ$ mais en définit une nouvelle :

#property[
  Tout élément $a$ de $ZZ$ admet un symétrique, noté $"sym"_+(a)$ tel que $a + "sym"_+(a) = e$.
]

== De façon plus générale

#definition[
  On appelle #text(red)[loi de composition interne] sur G toute application $*$ de $G times G$ dans $G$. Le couple $(G, *)$ est alors appelé #text(red)[magma].
]

Les propriétés observées pour $(ZZ, +)$ peuvent être vérifiées par d'autres magmas. Ces magmas sont alors appelés des groupes.

#definition[
  Soit $G$ un ensemble et $*$ une loi de composition interne de $G$. On dit que $(G, *)$ est un groupe si :
  - $G$ admet un élément neutre
  - $*$ est associatif
  - Tout élément de $G$ est symétrisable
]

#comment[
  On appelle groupe #text(red)[commutatif] ou #text(red)[abélien] un groupe $(G, *)$ tel que $*$ est commutative.
]

#example[
  - $(NN, +)$ n'est pas un groupe. En effet, par exemple, $2$ ne possède pas de symétrique.
  - $(NN, times)$ n'est pas un groupe pour la même raison.
  - $(ZZ, +)$ est un groupe.
  - $(ZZ, times)$ n'est pas un groupe car tous les éléments ne sont pas symétrisables
]

= Conclusion

Ce chapitre sert à aborder les notions qui seront essentielles à tous les autres chapitres de ce cours. Seuls les ensembles de références, la loi additive et la définition de groupe sont abordées ici, mais une connaissance et une compréhension bien plus approfondies seront nécessaire afin de suivre convenablement les chapitres suivants
Si certains concepts évoqués plus haut semblent obscurs à certains lecteurs, je ne peux que les inviter, comme je l'ai fait en introduction de ce chapitre, à se référrer #link("https://zanotti.univ-tln.fr/MD")[cours de M. ZANOTTI].

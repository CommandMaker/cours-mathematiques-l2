#import "@preview/wrap-it:0.1.1": wrap-content

#let _defCount = counter("definitions")
#let _propositionCount = counter("propositions")

#let colors = (
  definition: rgb("#f7768e"),
  property: olive,
  comment: purple,
  example: gray,
  proof: blue,
  proposition: eastern,
  title: olive
)

/*
 * Basic document formatting properties
 */
#let documentProperties(doc) = [
  #set text(font: "Lilex Nerd Font Mono")
  #set heading(numbering: "1.")
  #show link: underline
  #show link: set text(fill: blue)
  #set list(indent: 1cm)
  #set outline(title: "Contenu")

  #set page(paper: "a4", margin: 2.0cm)

  /* Some shortcuts for things that are annoying to type everytime */
  #show "ZnZA": $(ZZ"/"n ZZ, +, times)$
  #show "ZnZP": $(ZZ"/"n ZZ, +)$
  #show "ZnZT": $(ZZ"/"n ZZ, times)$
  #show "ZnZS": $(ZZ"/"n ZZ)^*$

  #show raw.where(block: true): it => {
    set text(font: "Lilex Nerd Font Mono")

    box(
      it,
      stroke: (paint: silver, thickness: .3mm),
      inset: 3mm,
      width: 100%,
    )
  }

  #show heading: it => block(
    {
      if (it.numbering != none) {
        box(
          text(counter(heading).display(it.numbering), fill: colors.title),
          inset: (right: 2mm)
        )
      }

      text(it.body)
    },
  )

  #show heading.where(level: 1): it => block(it, stroke: (bottom: 0.5mm + luma(80%)), inset: (bottom: 3mm), width: 100%)

  #show heading.where(level: 2): it => block(it, inset: (left: 7mm, bottom: 3mm))

  #set heading(numbering: (..numbers) => {
    let level = numbers.pos().len()
    if (level == 1) {
      return numbering("I.", numbers.pos().at(level - 1))
    } else if (level == 2) {
      return numbering("A.", numbers.pos().at(level - 1))
    } else {
      return numbering("1.", numbers.pos().at(level - 1))
    }
  })

  #doc
]


#let highlightContent(body, title, color, count) = {
  context counter(count).step()

  let t = title

  if count != "" {
    t += " " + context counter(count).display()
  }

  block[
    #grid(
      columns: (3.1cm, 1mm, 1fr),
      rows: (auto),
      column-gutter: 2mm,
      box(
        width: 100%,
        text(t, weight: "bold", fill: color),
        inset: (x: 0mm, y: 2mm)
      ),
      grid.cell(fill: color)[],
      box(
        width: 100%,
        inset: (x: 0mm, y: 2mm),
        body,
      )
    )
  ]
}


#let definition(body) = highlightContent(body, "Définition", colors.definition, "definitions")
#let theorem(body, label: "Théorème") = highlightContent(body, label, colors.definition, "")
#let property(body) = highlightContent(body, "Propriété", colors.property, "")
#let comment(body) = highlightContent(body, "Remarque", colors.comment, "")
#let example(body, label: "Exemple") = highlightContent(body, label, colors.example, "")
#let proof(body) = highlightContent(body, "Démonstration", colors.proof, "")
#let proposition(body) = highlightContent(body, "Proposition", colors.proposition, "propositions")


#let docTitle(body, preText: "Chapitre", number: "") = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 5mm,
    grid.cell(
      text(size: 2.5em, fill: colors.title)[#number],
      stroke: (bottom: 0.7mm + colors.title),
      inset: (bottom: 15mm)
    ),
    grid.cell(
      inset: (bottom: 5mm),
      stroke: (bottom: 0.5mm + gray)
    )[
      #align(top)[
        #text(preText, fill: gray, weight: "medium")
      ]
      #align(bottom)[
        #text(body, size: 2em)
      ]
    ]
  )
}

#let warning(body) = figure(
  align(
    left,
    block(
      stroke: (thickness: 0.4mm, paint: red, dash: "dashed"),
      radius: 3mm,
      width: 100%,
      inset: 4mm
    )[
      #wrap-content(image("../images/red-warning.png", width: 10mm), body, column-gutter: 5mm)
    ]
  ),
  kind: "warning",
  supplement: []
)

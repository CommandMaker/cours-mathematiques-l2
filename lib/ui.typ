#let defCounter = counter("def")
#let propCounter = counter("prop")


#let roundBlock(body, color, prefix, kind, count) = figure(
  align(
    left,
    block(
      context {
        let c = ""
        if count != "" {
          counter(count).step()
          c = str(counter(count).display(n => n+1)) + " "
        }

        text(fill: color, weight: "medium")[#prefix #c: ] + body
      },
      stroke: (thickness: 0.4mm, paint: color, dash: "dashed"),
      radius: 3mm,
      width: 100%,
      inset: 4mm
    )
  ),
  kind: kind,
  supplement: []
)

#let definition(body) = roundBlock(body, red, "Définition", "definition", "def")
#let theorem(body, label: "Théorème") = roundBlock(body, red, label, "theorem", "")
#let property(body) = roundBlock(body, olive, "Propriété", "property", "prop")
#let comment(body) = roundBlock(body, purple, "Remarque", "comment", "")
#let example(body) = roundBlock(body, gray, "Exemple", "example", "")


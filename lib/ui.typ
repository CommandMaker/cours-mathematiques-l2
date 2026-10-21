#let defCounter = counter("def")

#let def(body) = {
  context {
    defCounter.step()
    let head = counter(heading).display()
    let def = counter("def").display(n => n+1)
    block(
     text(fill: red, weight: "medium")[Définition #head#def: ] + body,
      stroke: (thickness: 0.4mm, paint: red, dash: "dashed"),
      radius: 3mm,
      width: 100%,
      inset: 4mm
    )
  }
}

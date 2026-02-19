


#set page(paper: "a4", margin: 1cm)
#set text(
  font: "Helvetica Neue",
  weight: "light",
)

#text(size: 40pt, "VIII Кубок школы №57")



#place(
  right + top,
  dy: -5%,
  dx: 10%,
  image(width: 40%, "assets/bw_vector_sova.svg"),
)

#text(size: 30pt, style: "oblique", weight: "medium", "Конкурс с картинами")

#set text(size: 20pt)

С известных картин пропали главные фигуры и персонажи. Угадайте названия и авторов картин перед вами

#{
  set align(center)

  set text(30pt)
  table(
    columns: (10%, 50%, 40%),
    rows: (6%,) * 11,
    align: center + horizon,
    table.header([№], [Название картины], [Автор]),
    [1], [], [],
    [2], [], [],
    [3], [], [],
    [4], [], [],
    [5], [], [],
    [6], [], [],
    [7], [], [],
    [8], [], [],
    [9], [], [],
    [10], [], [],
  )
}

#pagebreak()

#set align(center+horizon)
#image("assets/paintings/Медийки-2026_page-0001.png")



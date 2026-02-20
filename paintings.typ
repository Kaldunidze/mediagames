

#set text(size: 15pt)
#set page(paper: "a4", margin: 1.5cm, footer: align(center)[КОНКУРС №1])
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

#v(1.5em)

Каждой команде выдано по 5 листов с заданиями из разных областей. Каждый листок приносит одинаковое количество баллов. На решение заданий у вас есть 1 час.

#text(size: 30pt, style: "oblique", weight: "medium", "Ограбление Лувра и не только")

#set text(size: 20pt)

С известных картин пропали главные фигуры и персонажи. Угадайте названия и авторов этих картин.

#{
  set align(center)

  set text(25pt)
  table(
    columns: (10%, 50%, 40%),
    rows: (5%,) * 11,
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

#set align(center + horizon)
#image("assets/paintings/Медийки-2026_page-0001.png")





#let blank_body(name, location, num, pic) = [
  #box(width: 90%, height: 80%, [
    #place(left + top, rotate(num * 0deg, text(size: 10pt, name)))


    #place(right + top, move(dx: 10%, dy: -15%, box(height: 70%, pic)))

    #let ang = (num - 1)/47 * 0deg
    #place(center + horizon, text(
      size: 50pt,
      fill: color.black.transparentize(80%),

      rotate(
        ang,
        [#num],
      ),
    ))


    #place(right + bottom, rotate(num * 0deg, location))
  ])
]

#set text(weight: 300, font: "Helvetica Neue")





#let one_blankpage(blank_params, page_params) = {
  let w = page_params.width
  let h = page_params.height
  set page(margin: 0cm)
  let a = ()
  for i in range(1, w * h + 1) {
    a.push(align(center + horizon, blank_body(blank_params.loc, blank_params.tp, i, blank_params.pic)))
  }

  grid(
    rows: (100% / h,) * h,
    columns: (100% / w,) * w,
    gutter: 0cm,
    stroke: 1pt + black,
    ..a
  )
}


#let start_team = 1
#let finish_team = 6
#let width_blanks = 4
#let height_blanks = 4
#let location = "День рождения школы №57"
#let team_prefix = "Команда №"
#let picture = image("/assets/bw_vector_sova.svg")

#set page(flipped: true)

#for i in range(start_team, finish_team + 1) {
  one_blankpage((loc: location, tp: team_prefix + str(i), pic: none), (width: width_blanks, height: height_blanks))
}





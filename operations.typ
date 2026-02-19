#import "@preview/cetz:0.4.2"
#import "@preview/cetz-plot:0.1.3"

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

#text(size: 30pt, style: "oblique", weight: "medium", "Конкурс с операциями")




#set text(size: 20pt)

#let op1_func(a, b) = {
  return int(str(a) + str(b))
}

#let op2_func(a, b) = {
  a = int(a)
  b = int(b)
  let p = calc.pow(10, b)
  if (calc.rem(a, p) / (p / 10)) == 9 {
    return a - 9 * (p / 10)
  }
  return a + (p / 10)
}

#let op3_func(a, b) = {
  return calc.rem(a, b)
}

#let op5_func(a) = {
  let b = str(a)
  b = b.rev()
  return int(b)
}

#let op6_func(n) = {
  let (a, b) = (0, 1)
  for _ in range(n) {
    let next = a + b
    a = b
    b = next
  }
  return a
}



#let op1 = sym.smash
#let op2 = math.angle
#let op3 = math.errorbar
#let op4 = math.dorome
#let op5 = math.copyleft
#let op6 = math.bitcoin




В этом задании мы предлагаем вам найти закономерности в этих нестандартных математических операциях пользуясь примерами, и решить задания.





#box[
  #set align(center)
  #grid(
    columns: (1%, 49%) * 2,
    row-gutter: 3%,
    align: horizon + center,

    [
      #align(center + horizon, text(size: 40pt, op1))
    ],
    [
      - $ 10 op1 20 = 1020 $
      - $ 6 op1 7 = 67 $
      - $ 27 op1 1 = 271 $
      - $ 1 op1 2 op1 3 = 123 $
    ],
    [
      #align(center + horizon, text(size: 40pt, op2))


    ],

    [
      - $ 10 op2 2 = 20 $
      - $ 123 op2 2 = 133 $
      - $ 9876 op2 1 = 9877 $
      - $ 90 op2 2 = 0 $
      - $ 100 op2 (1 op2 1) = 110 $
    ],
    [
      #align(center + horizon, text(size: 40pt, op3))

    ],

    [
      - $ 10 op3 3 = #op3_func(10, 3) $
      - $ 25 op3 7 = #op3_func(25, 7) $
      - $ 273 op3 181 = #op3_func(273, 181) $
      - $ 181 op3 273 = #op3_func(181, 273) $
      - $ 1000 op3 10 = #op3_func(1000, 10) $

    ],
    [
      #align(center + horizon, text(size: 40pt, op4))

    ],

    [
      - $ op4(10) = 6 $
      - $ op4(2) = 3 $
      - $ op4(0) = 4 $
      - $ op4(103) = 6 $
      - $ op4(375) = 18 $
      - $ op4(1000000) = 7 $

    ],
    [
      #align(center + horizon, text(size: 40pt, op5))

    ],

    [
      - $ op5(10) = #op5_func(10) $
      - $ op5(123) = #op5_func(123) $
      - $ op5(3003) = #op5_func(3003) $
      - $ op5(76) = #op5_func(76) $
      - $ op5(2424421) = #op5_func(2424421) $

    ],
    [
      #align(center + horizon, text(size: 40pt, op6))

    ],

    [
      - $ op6(1) = #op6_func(1) $
      - $ op6(2) = #op6_func(2) $
      - $ op6(4) = #op6_func(4) $
      - $ op6(18) = 2584 $
      - $ op6(7) = #op6_func(7) $
    ],
  )
]

#pagebreak()






+ $ (10 op1 2 ) - 30 = $
+ $ (700 op2 2) op3 27 = $
+ $ op4 ((5 op1 7) op3 (5 op2 7 )) = $
+ $ op6 ( 5 ) * op4 ( 8 ) - (2 op2 (1 op2 1)) = $
+ $ op5 (op5 ( 25 * 62 )) + (140007 op3 10) = $



Пространство для размышлений #sym.arrow.b


#rect(width: 100%, height: 20cm, stroke: black + 2pt, fill: tiling(square(size: 1cm)))

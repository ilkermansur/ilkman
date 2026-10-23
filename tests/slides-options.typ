#import "../lib.typ": *
#show: im-slides.with(title: [Dark], author: "t", fonts: "source", colors: "gece", mode: "dark", aspect: "4-3", dense: "high", progress: false, footer: (left: none, center: "page-total", right: "section"), lang: "en")
#im-title-slide(style: "topo")
#im-section[First]
== Slide
Text `code` and #im-explain("term")[note].
#im-code(hl-steps: ((1,), (2,)))[```py
a = 1
b = 2
```]
#im-slide(dense: 0.6)[#lorem(120)]
#im-focus[Done]

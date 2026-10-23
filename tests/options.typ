// Exercises the less common options of im-doc and components.
#import "../lib.typ": *
#show: im-doc.with(
  lang: "en",
  fonts: (base: "plex", body: "Source Serif 4"),
  colors: (primary: rgb("#005f73"), accent: rgb("#ee9b00")),
  title: [Options], author: "test", version: "v9",
  chapter-start: "odd", mirror: true, print: true,
  header: (left: "title", center: "version", right: c => [custom]),
  footer: (left: "author", center: "date", right: "page-total"),
  footer-rule: true,
)
#im-cover(style: "solid", solid: (rule: true), text-pos: "top", logo: image("pixel.png"))
#im-cover(style: "topo", art-color: "red", seed: 7, art-height: 40%, topo: (rings: 5, wobble: 0.3))
#im-cover(style: "halftone", bg: "accent", halftone: (origin: "center", grid: 12))
#im-cover(style: "gitgraph", gitgraph: (lanes: 3, commits: 10, merges: 0.6))
#im-cover(style: "pcm", pcm: (samples: 12, levels: 4, show-wave: false, stems: false))
#im-cover(style: "waveform", waveform: (bars: 70, shape: "square", mirror: false, accent-every: none))
#im-cover(style: "bits", bits: (text: "ilkman", group: none, highlight: none))
#im-cover(style: "minimap", minimap: (lines: 20, max-indent: 1, viewport: none))
#im-cover(style: "packet", packet: (fields: ("A", "B"), ruler: false, footer: ("x", "y", "z")))
#im-toc(depth: 3, title: [TOC])
= Chapter
See #link("https://typst.app")[Typst] and @tbl.
#im-table(fill: none, zebra: false, align: (left, center, right), widths: (1fr, 1fr, 2fr), caption: [T], sep: ";", markup: true)[```
*A*; B; C
1; `x`; 3\;4
```] <tbl>
#im-table(header: false, fill: rgb("#880088"))[```
a | b
c | d
```]
#im-code(numbering: false, width: 60%, align: "right", hl: range(1, 3))[```
plain text line
second
```]
#im-grid((1, 3), gutter: 2em, stroke: "green", radius: 0pt, inset: 4pt, align: horizon)[a][b]
#im-grid(4)[1][2][3][4]
#im-note(kind: "danger", title: none)[No title.]
#im-note(kind: "info", title: [Custom])[Body.]
#im-img(path("pixel.png"), width: 30%, caption: [Pixel])
#im-diagram(width: 50%, caption: [Scaled])[#rect(width: 2cm, height: 1cm, fill: blue)]
#im-plot(width: 3cm)[#circle(radius: 1cm)]
== Level 2
=== Level 3
==== Level 4 unnumbered
#im-figures-list()
#im-tables-list()

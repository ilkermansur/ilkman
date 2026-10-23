#import "../lib.typ": *
#show: im-slides.with(title: [SIP ve VoIP Temelleri], subtitle: [Protokolden üretime], author: "ilker", version: "v0.1")
#im-title-slide(style: "neural", series: "Ders notları")
= Giriş
== SIP nedir?
- Birinci madde #im-explain("INVITE")[Çağrı başlatır.]
#im-pause
- İkinci madde
#im-speaker[Burada SIP'i anlat.]
== Kod
#im-code(hl-steps: ((1,), (2, 3)))[```py
def f():
    print("test")
    return 1
```]
#im-slide(title: "Yoğun slayt", dense: "high")[
  #lorem(80)
  #im-table(fill: "blue")[```
  A | B | C
  1 | 2 | 3
  ```]
]
== Az metin
#im-dense("low")
Büyük yazı `inline`.
== Hâlâ low
Metin.
== Normal
#im-dense(auto)
Metin.
= İkinci bölüm
#im-focus[Tek büyük mesaj]
== Grid
#im-grid("1/1", fill: ("green", "blue"))[sol][sağ]
#im-note(kind: "tip")[İpucu]

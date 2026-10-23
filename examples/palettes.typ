// Palette and font overview — every palette, every font palette.
#import "../lib.typ": *

#for (fi, f) in font-palettes.keys().enumerate() {
  for (pi, p) in palettes.keys().enumerate() {
    if calc.rem(pi, 5) != fi and fi < 3 { continue }
    show: im-doc.with(fonts: f, colors: p, header: none, footer: none, note-column: 0)
    page[
      #text(size: 9pt, fill: gray)[fonts: #raw(f) · colors: #raw(p)]
      == Başlık ve gövde metni
      SIP oturumu #im-kbd("Ctrl+C") ile kesilmez; `INVITE` isteği gönderilir ve yanıt beklenir. Türkçe karakterler: ğüşıöç ĞÜŞİÖÇ.
      #im-grid("1/1/1", fill: ("blue", "green", "red"))[blue][green][red]
      #im-table(fill: "primary")[```
      Rol | Örnek | Değer
      ink | metin | 1
      primary | başlık | 2
      accent | bağlantı | 3
      ```]
      #im-code(title: "ornek.py")[```py
      def merhaba(ad):
          return f"Merhaba {ad}"
      ```]
      #im-note(kind: "tip")[İpucu kutusu.]
    ]
  }
}

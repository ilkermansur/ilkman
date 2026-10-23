#import "../lib.typ": *
#show: im-doc.with(title: [SIP ve VoIP Temelleri], subtitle: [Protokolden üretime], author: "ilker", version: "v0.1", fonts: "plex")
#im-cover(style: "waveform", series: "Ders notları", volume: 1)
#im-toc()
= Giriş
SIP, #im-explain("INVITE")[Çağrıyı başlatan istek.] mesajıyla başlar. Inline `sip:alice@ex.com` kodu.

== Kod
#im-code(title: "hello.py", hl: (2,), caption: [Merhaba])[```py
def f():
    print("test")
    return 1
```]
#im-code(numbering: false, width: auto, align: "center")[```sh
sip show peers
```]
== Tablo
#im-table(fill: "blue", caption: [Portlar])[```
Protokol | Port | Taşıma
SIP      | 5060 | UDP/TCP
SIPS     | 5061 | TLS
RTP | 10000 | UDP
```]
#im-table(cols: 3, fill: "green")[*A*][B][`C`][1][2][3]
#im-grid("1/2", fill: ("green", "blue"), stroke: true)[sol][sağ]
#im-grid("1/1/1", fill: "blue")[UDP][TCP][TLS][SRTP][WS][WSS]
#im-note(kind: "warn")[Dikkat edin.]
#im-note[Bilgi notu.]
#im-term("SIP")[Session Initiation Protocol.]
#im-steps[
+ Birinci adım
+ İkinci adım
]
#im-kbd("Ctrl+Shift+P") ve @fig-x.
#figure(rect(width: 3cm), caption: [Kutu]) <fig-x>
#im-appendix[
= Ek bölüm
Metin.
]
= Notlar
Uzun bir paragraf içinde #im-explain("REGISTER")[Kullanıcının konumunu kaydeder. Bu not birkaç satır sürebilir ve iki yana yaslanır.] mesajı ve hemen ardından #im-explain("BYE", fill: "green")[Çağrıyı sonlandırır.] mesajı geçer. #lorem(40)

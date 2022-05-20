Profile:        JP_Practitioner_CUPIX
Parent:         JP_Practitioner
Id:             JP-Practitioner-CUPIX
Description:    "TBD"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Practitioner-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS


* name 1..* MS
* name only JP_HumanName

* name[IDE] 1..1 MS
  * ^short = "漢字表記"
  * extension[NameRepresentationUse]
    * url =  $iso21090-EN-representation (exactly)
      * ^short = "拡張を識別するURL。固定値。"
    * valueCode = #IDE
      * ^short = "漢字表記であることを示す固定値。"
  * text 1..1 MS
    * ^short = "氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。"
  * family 0..1 MS
    * ^short = "氏名の姓。"
  * given 0..* MS
    * ^short = "氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"

* name[SYL]
  * ^short = "よみ（カタカナ）"
  * extension[NameRepresentationUse]
    * url =  $iso21090-EN-representation (exactly)
      * ^short = "拡張を識別するURL。固定値。"
    * valueCode = #SYL
      * ^short = "カナ表記であることを示す固定値。"
  * text 1..1 MS
    * ^short = "カナ氏名全体の文字列をtext要素に入れる。氏名の姓と名が分離できない場合は本要素のみを使用する。カタカナはJIS X 0208のカタカナ（全角カナ）みとし、JIS X 0201のカタカナ（半角カナ）は使用してはならない。"
  * family 0..1 MS
    * ^short = "カナ氏名の姓。"
  * given 0..* MS
    * ^short = "カナ氏名の名。ミドルネームがある場合には、ミドルネーム、名の順で繰り返す。"


Profile: JP_Patient_CUPIX
Parent: JP_Patient
Id: JP-Patient-CUPIX
Description: "TBD"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Patient-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。内容を省略しても構わない。このデータは人がこのリソースの内容の概略をひと目で把握するためだけに使われるものであり、データ処理対象としてはならない。 この内容と以降の構造化されたデータとの内容が不一致の場合には、この要素の内容は無視される。（本文書のすべてのリソースで同様とする）"
  * status 1..1 MS
  * status = #generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* identifier 1..1 MS
  * ^short = "社員番号や健診実施機関受診者整理番号"
    * system 1..1
    * value 1..1


* gender 1..1 MS
  * ^short = "患者の性別。'male'または'female'。"

* birthDate 1..1 MS
  * ^short = "受診者の生年月日。ISO8601に準拠して'yyyy-mm-dd'形式"

* address 0..1 MS
  * ^short = "受診者の住所"
  * text 0..1 MS
    * ^short = "住所文字列"
  * postalCode 1..1 MS
    * ^short = "郵便番号"
  * country 0..1 MS
    * ^short = "住所地が国内の場合「JP」固定"



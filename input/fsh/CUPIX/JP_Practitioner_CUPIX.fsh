Profile:        JP_Practitioner_CUPIX
Parent:         JP_Practitioner
Id:             JP-Practitioner-CUPIX
Description:    "健診・検診結果報告書　Practitionerリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Practitioner-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

Profile:        JP_Encounter_CUPIX
Parent:         JP_Encounter
Id:             JP-Encounter-CUPIX
Description:    "健診・検診結果報告書　Encounterリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Encounter-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* status 1..1 MS
* status = #finished (exactly)
  * ^short = "バリューセットEncounterStatus(http://hl7.org/fhir/ValueSet/encouner-status)より'finished'を指定する。固定値。"

* class 1..1 MS
* class from http://jpfhir.jp/fhir/eCheckup/ValueSet/encounter-category
  * ^short = "受診情報の分類"
  * system 1..1 MS
  * system = "http://jpfhir.jp/fhir/eCheckup/CodeSystem/encounter-category" (exactly)
    * ^short = "コード体系を識別するURI。固定値。"
  * code 1..1 MS
  * code = #checkup (exactly)
    * ^short = "健診を表すコード。固定値。"
  * display 0..1 MS
  * display = "健診" (exactly)
    * ^short = "固定値。"

* serviceType 1..1 MS
  * ^short = "健診プログラムサービスコード。ヘッダー部の健診管理情報における報告区分コードは、本ファイルを作成し提出する報告事由の意味で使用するのに対して、この健診プログラムサービスコードは、健診実施時にどのような区分として実施されたかを示す。"
  * coding 1..1 MS
    * system 1..1

* period 1..1 MS
  * ^short = "検診の受診日。1日で実施される健診ではperiod型のstart要素とend要素には同一の日付を記録する。"
  * start 1..1 MS
  * end 1..1 MS

* serviceProvider 1..1 MS
* serviceProvider only Reference(JP_Organization_Provider_CUPIX)
  * ^short = "検診実施機関を表すOrganizationリソースへの参照。"
  * reference 1..1 MS

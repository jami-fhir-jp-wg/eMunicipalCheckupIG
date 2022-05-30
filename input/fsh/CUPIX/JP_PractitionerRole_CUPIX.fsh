Profile:        JP_PractitionerRole_CUPIX
Parent:         JP_PractitionerRole
Id:             JP-PractitionerRole-CUPIX
Description:    "健診・検診結果報告書　PractitionerRoleリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-PractitionerRole-CUPIX"

* ^status = #draft

* text 0..1 MS
  * ^short = "本リソースをテキストで表現したものを入れてもよい。"
  * status 1..1 MS
  * status = $narrative_cs#generated
    * ^short = "固定値。テキスト内容の全てがリソースのコンテンツから生成されたことを示す。"
  * div 1..1 MS

* practitioner 1..1 MS
* practitioner only Reference(JP_Practitioner_CUPIX)
  * ^short = "作成者を表すPractitionerリソースへの参照"
  * reference 1..1 MS
    * ^short = "PractitionerリソースのfullUrl要素に指定されるUUIDを指定。"

* organization 1..1 MS
// TODO:報告書作成機関のリソースはプロファイルによって異なる
//* organization only Reference(JP_Organization_CUPIX)
  * ^short = "報告書作成機関を表すOrganizationリソースへの参照。"
  * reference 1..1 MS
    * ^short = "OrganizationリソースのfullUrl要素に指定されるUUIDを指定。"


Profile:        JP_Observation_eMunicipalCheckup_Group_9N281
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-9N281
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(マンモグラフィー検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_9N281"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-9N281-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9N281-code and emc-obs-9N281-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  9N281000000000011 1..1 MS and
  9N281160800000049 1..1 MS
* hasMember[9N281000000000011] only Reference(JP_Observation_eMunicipalCheckup_9N281000000000011)

* hasMember[9N281160800000049] only Reference(JP_Observation_eMunicipalCheckup_9N281160800000049)

Invariant: emc-obs-9N281-cat
Description: "category.coding.code should be 'imaging'."
Expression: "code = 'imaging'"
Severity: #warning

Invariant: emc-obs-9N281-code
Description: "code.coding.code must be '9N281'."
Expression: "code = '9N281'"
Severity: #error

Invariant: emc-obs-9N281-disp
Description: "code.coding.display should be 'マンモグラフィー検査'."
Expression: "display = 'マンモグラフィー検査'"
Severity: #warning

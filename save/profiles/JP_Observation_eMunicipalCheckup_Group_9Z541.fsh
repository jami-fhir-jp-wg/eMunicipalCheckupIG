Profile:        JP_Observation_eMunicipalCheckup_Group_9Z541
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-9Z541
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(骨粗鬆症超音波検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_9Z541"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-9Z541-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9Z541-code and emc-obs-9Z541-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  9Z541195600000001 1..1 MS and
  9Z541195700000001 1..1 MS and
  9Z541195800000049 1..1 MS and
  9Z541195900000049 1..1 MS and
  9Z541000000000011 1..1 MS and
  9Z541160800000049 1..1 MS
* hasMember[9Z541195600000001] only Reference(JP_Observation_eMunicipalCheckup_9Z541195600000001)

* hasMember[9Z541195700000001] only Reference(JP_Observation_eMunicipalCheckup_9Z541195700000001)

* hasMember[9Z541195800000049] only Reference(JP_Observation_eMunicipalCheckup_9Z541195800000049)

* hasMember[9Z541195900000049] only Reference(JP_Observation_eMunicipalCheckup_9Z541195900000049)

* hasMember[9Z541000000000011] only Reference(JP_Observation_eMunicipalCheckup_9Z541000000000011)

* hasMember[9Z541160800000049] only Reference(JP_Observation_eMunicipalCheckup_9Z541160800000049)

Invariant: emc-obs-9Z541-cat
Description: "category.coding.code should be 'imaging'."
Expression: "code = 'imaging'"
Severity: #warning

Invariant: emc-obs-9Z541-code
Description: "code.coding.code must be '9Z541'."
Expression: "code = '9Z541'"
Severity: #error

Invariant: emc-obs-9Z541-disp
Description: "code.coding.display should be '骨粗鬆症超音波検査'."
Expression: "display = '骨粗鬆症超音波検査'"
Severity: #warning


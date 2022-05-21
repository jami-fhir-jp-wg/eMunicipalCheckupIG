Profile:        JP_Observation_eMunicipalCheckup_Group_9Z531
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-9Z531
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(骨粗鬆症エックス線検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_9Z531"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-9Z531-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9Z531-code and emc-obs-9Z531-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  9Z531195600000001 1..1 MS and
  9Z531195700000001 1..1 MS and
  9Z531195800000049 1..1 MS and
  9Z531195900000049 1..1 MS and
  9Z531000000000011 1..1 MS and
  9Z531160800000049 1..1 MS
* hasMember[9Z531195600000001] only Reference(JP_Observation_eMunicipalCheckup_9Z531195600000001)

* hasMember[9Z531195700000001] only Reference(JP_Observation_eMunicipalCheckup_9Z531195700000001)

* hasMember[9Z531195800000049] only Reference(JP_Observation_eMunicipalCheckup_9Z531195800000049)

* hasMember[9Z531195900000049] only Reference(JP_Observation_eMunicipalCheckup_9Z531195900000049)

* hasMember[9Z531000000000011] only Reference(JP_Observation_eMunicipalCheckup_9Z531000000000011)

* hasMember[9Z531160800000049] only Reference(JP_Observation_eMunicipalCheckup_9Z531160800000049)

Invariant: emc-obs-9Z531-cat
Description: "category.coding.code should be 'imaging'."
Expression: "code = 'imaging'"
Severity: #warning

Invariant: emc-obs-9Z531-code
Description: "code.coding.code must be '9Z531'."
Expression: "code = '9Z531'"
Severity: #error

Invariant: emc-obs-9Z531-disp
Description: "code.coding.display should be '骨粗鬆症エックス線検査'."
Expression: "display = '骨粗鬆症エックス線検査'"
Severity: #warning


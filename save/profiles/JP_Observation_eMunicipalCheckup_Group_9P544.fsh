Profile:        JP_Observation_eMunicipalCheckup_Group_9P544
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-9P544
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(胃内視鏡検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_9P544"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-9P544-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9P544-code and emc-obs-9P544-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  9P544160700000011 1..1 MS and
  9P545160800000049 1..1 MS
* hasMember[9P544160700000011] only Reference(JP_Observation_eMunicipalCheckup_9P544160700000011)

* hasMember[9P545160800000049] only Reference(JP_Observation_eMunicipalCheckup_9P545160800000049)

Invariant: emc-obs-9P544-cat
Description: "category.coding.code should be 'procedure'."
Expression: "code = 'procedure'"
Severity: #warning

Invariant: emc-obs-9P544-code
Description: "code.coding.code must be '9P544'."
Expression: "code = '9P544'"
Severity: #error

Invariant: emc-obs-9P544-disp
Description: "code.coding.display should be '胃内視鏡検査'."
Expression: "display = '胃内視鏡検査'"
Severity: #warning


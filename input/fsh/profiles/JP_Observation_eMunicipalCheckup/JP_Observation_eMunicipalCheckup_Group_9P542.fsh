Profile:        JP_Observation_eMunicipalCheckup_Group_9P542
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-9P542
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(胃エックス線検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_9P542"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-9P542-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9P542-code and emc-obs-9P542-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  9P542160700000011 1..1 MS and
  9P543160800000049 1..1 MS
* hasMember[9P542160700000011] only Reference(JP_Observation_eMunicipalCheckup_9P542160700000011)

* hasMember[9P543160800000049] only Reference(JP_Observation_eMunicipalCheckup_9P543160800000049)

Invariant: emc-obs-9P542-cat
Description: "category.coding.code should be 'imaging'."
Expression: "code = 'imaging'"
Severity: #warning

Invariant: emc-obs-9P542-code
Description: "code.coding.code must be '9P542'."
Expression: "code = '9P542'"
Severity: #error

Invariant: emc-obs-9P542-disp
Description: "code.coding.display should be '胃エックス線検査'."
Expression: "display = '胃エックス線検査'"
Severity: #warning


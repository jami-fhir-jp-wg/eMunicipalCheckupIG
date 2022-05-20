Profile:        JP_Observation_eMunicipalCheckup_Group_1B040
Parent:         JP_Observation_eMunicipalCheckup_Group
Id:             JP-Observation-eMunicipalCheckup-Group-1B040
Description:    "自治体検診結果報告書　Observationリソース　検査グループ情報(便潜血検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group_1B040"
* ^status = #draft

* category 1..1 MS
  * ^short = "検査項目の区分を表すカテゴリコード"
  * coding 1..1 MS
    * obeys emc-obs-1B040-cat

* code 1..1 MS
  * ^short = "健診項目グループコード。健診項目グループを識別するコードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-1B040-code and emc-obs-1B040-disp

* value[x] 0..0

* hasMember ^slicing.discriminator.type = #profile
* hasMember ^slicing.discriminator.path = "resolve()"
* hasMember ^slicing.rules = #closed
* hasMember contains 
  1B040000001599811 1..1 MS and
  1B040160801599849 1..1 MS
* hasMember[1B040000001599811] only Reference(JP_Observation_eMunicipalCheckup_1B040000001599811)

* hasMember[1B040160801599849] only Reference(JP_Observation_eMunicipalCheckup_1B040160801599849)

Invariant: emc-obs-1B040-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-1B040-code
Description: "code.coding.code must be '1B040'."
Expression: "code = '1B040'"
Severity: #error

Invariant: emc-obs-1B040-disp
Description: "code.coding.display should be '便潜血検査'."
Expression: "display = '便潜血検査'"
Severity: #warning


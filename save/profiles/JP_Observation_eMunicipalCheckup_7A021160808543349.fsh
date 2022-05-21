Profile:        JP_Observation_eMunicipalCheckup_7A021160808543349
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-7A021160808543349
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(子宮頸がん検診の頸部細胞診検査所見)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_7A021160808543349"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-7A021160808543349-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-7A021160808543349-code and emc-obs-7A021160808543349-disp

* value[x] only string
* valueString 1..1 MS
  * ^short = "文字型の検診結果の場合に使用する"



Invariant: emc-obs-7A021160808543349-cat
Description: "category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: emc-obs-7A021160808543349-code
Description: "code.coding.code must be '7A021160808543349'."
Expression: "code = '7A021160808543349'"
Severity: #error

Invariant: emc-obs-7A021160808543349-disp
Description: "code.coding.display should be '子宮頸がん検診の頸部細胞診検査所見'."
Expression: "display = '子宮頸がん検診の頸部細胞診検査所見'"
Severity: #warning


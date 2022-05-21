Profile:        JP_Observation_eMunicipalCheckup_9P505160800000049
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9P505160800000049
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(肺がん検診のその他所見)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9P505160800000049"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9P505160800000049-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9P505160800000049-code and emc-obs-9P505160800000049-disp

* value[x] only string
* valueString 1..1 MS
  * ^short = "文字型の検診結果の場合に使用する"



Invariant: emc-obs-9P505160800000049-cat
Description: "category.coding.code should be 'exam'."
Expression: "code = 'exam'"
Severity: #warning

Invariant: emc-obs-9P505160800000049-code
Description: "code.coding.code must be '9P505160800000049'."
Expression: "code = '9P505160800000049'"
Severity: #error

Invariant: emc-obs-9P505160800000049-disp
Description: "code.coding.display should be '肺がん検診のその他所見'."
Expression: "display = '肺がん検診のその他所見'"
Severity: #warning


Profile:        JP_Observation_eMunicipalCheckup_9N737000000000012
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9N737000000000012
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(肺がん検診時の喫煙指数)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9N737000000000012"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9N737000000000012-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9N737000000000012-code and emc-obs-9N737000000000012-disp

* value[x] only integer
* valueInteger 1..1 MS
  * ^short = "数値型の検診結果の場合に使用する"



Invariant: emc-obs-9N737000000000012-cat
Description: "category.coding.code should be 'social-history'."
Expression: "code = 'social-history'"
Severity: #warning

Invariant: emc-obs-9N737000000000012-code
Description: "code.coding.code must be '9N737000000000012'."
Expression: "code = '9N737000000000012'"
Severity: #error

Invariant: emc-obs-9N737000000000012-disp
Description: "code.coding.display should be '肺がん検診時の喫煙指数'."
Expression: "display = '肺がん検診時の喫煙指数'"
Severity: #warning


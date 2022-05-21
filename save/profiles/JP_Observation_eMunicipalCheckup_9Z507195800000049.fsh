Profile:        JP_Observation_eMunicipalCheckup_9Z507195800000049
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9Z507195800000049
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(骨粗鬆症検診のDXA検査測定部位)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9Z507195800000049"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9Z507195800000049-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9Z507195800000049-code and emc-obs-9Z507195800000049-disp

* value[x] only string
* valueString 1..1 MS
  * ^short = "文字型の検診結果の場合に使用する"



Invariant: emc-obs-9Z507195800000049-cat
Description: "category.coding.code should be 'imaging'."
Expression: "code = 'imaging'"
Severity: #warning

Invariant: emc-obs-9Z507195800000049-code
Description: "code.coding.code must be '9Z507195800000049'."
Expression: "code = '9Z507195800000049'"
Severity: #error

Invariant: emc-obs-9Z507195800000049-disp
Description: "code.coding.display should be '骨粗鬆症検診のDXA検査測定部位'."
Expression: "display = '骨粗鬆症検診のDXA検査測定部位'"
Severity: #warning


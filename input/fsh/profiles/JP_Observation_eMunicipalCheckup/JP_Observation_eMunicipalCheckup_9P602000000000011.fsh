Profile:        JP_Observation_eMunicipalCheckup_9P602000000000011
Parent:         JP_Observation_eMunicipalCheckup
Id:             JP-Observation-eMunicipalCheckup-9P602000000000011
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報(肝炎ウイルス検診時の問診：広範な外科的処置歴の有無)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_9P602000000000011"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * obeys emc-obs-9P602000000000011-cat

* code 1..1 MS
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding 1..1 MS
    * obeys emc-obs-9P602000000000011-code and emc-obs-9P602000000000011-disp

* value[x] only CodeableConcept
* valueCodeableConcept 1..1 MS
  * ^short = "検診結果がコード型である健診項目の結果を表す。"
  * coding 1..1 MS
    * obeys emc-obs-9P602000000000011-system


* component 0..1 MS
  * ^short = "本書では、所見型の健診項目の場合に、所見有無に対応する健診項目に対して、対応する所見を記述する場合に使用する。"
  * code 1..1 MS
    * coding 1..* MS
      * obeys emc-obs-9P603160800000049-code and emc-obs-9P603160800000049-disp
  * value[x] only dateTime
  * valueDateTime 1..1 MS
    * ^short = "日付型の検診結果の場合に使用する"


Invariant: emc-obs-9P602000000000011-cat
Description: "category.coding.code should be 'exam'."
Expression: "code = 'exam'"
Severity: #warning

Invariant: emc-obs-9P602000000000011-code
Description: "code.coding.code must be '9P602000000000011'."
Expression: "code = '9P602000000000011'"
Severity: #error

Invariant: emc-obs-9P602000000000011-disp
Description: "code.coding.display should be '肝炎ウイルス検診時の問診：広範な外科的処置歴の有無'."
Expression: "display = '肝炎ウイルス検診時の問診：広範な外科的処置歴の有無'"
Severity: #warning

Invariant: emc-obs-9P602000000000011-system
Description: "valueCodeableConcept.coding.system should be 'urn:oid:1.2.392.100495.100.2054'."
Expression: "system = 'urn:oid:1.2.392.100495.100.2054'"
Severity: #warning

Invariant: emc-obs-9P603160800000049-code
Description: "component.code.coding.code must be '9P603160800000049'."
Expression: "code = '9P603160800000049'"
Severity: #error

Invariant: emc-obs-9P603160800000049-disp
Description: "component.code.coding.display should be '肝炎ウイルス検診時の問診：広範な外科的処置時期'."
Expression: "display = '肝炎ウイルス検診時の問診：広範な外科的処置時期'"
Severity: #warning


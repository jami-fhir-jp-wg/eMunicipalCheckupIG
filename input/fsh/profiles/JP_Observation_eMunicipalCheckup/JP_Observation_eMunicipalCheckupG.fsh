Profile:        JP_Observation_eMunicipalCheckupG
Parent:         JP_Observation_CUPIX
Id:             JP-Observation-eMunicipalCheckupG
//Title:          "自治体検診結果報告書　Observationリソース　検査項目情報"
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckupG"
* ^status = #draft
* obeys emc-obs-1 and emc-obs-2 and emc-obs-3 and emc-obs-4 and emc-obs-5

/*
Alias: $observationGroup_codes_cs = http://jpfhir.jp/fhir/eCheckup/CodeSystem/observationGroup-codes
Alias: $observationGroup_codes_vs = http://jpfhir.jp/fhir/eCheckup/ValueSet/observationGroup-codes
Alias: $organization-type = http://terminology.hl7.org/CodeSystem/organization-type
Alias: $observation-category = http://terminology.hl7.org/CodeSystem/observation-category
Alias: $v3-ObservationInterpretation = http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation
Alias: $data-absent-reason = http://terminology.hl7.org/CodeSystem/data-absent-reason
Alias: $attachement-format = http://jpfhir.jp/fhir/eCheckup/CodeSystem/attachement-format
*/

* category.coding.code from http://terminology.hl7.org/ValueSet/observation-category
* code
  * ^short = "健診項目コード。健診項目を識別するJLAC10コードを指定。" //Issueとして挙げる
  * coding.code from http://terminology.hl7.org/ValueSet/observation-category

* subject only Reference(JP_Patient_eMunicipalCheckup)

* specimen only Reference(JP_Specimen_eMunicipalCheckup)


//* hasMember only Reference(JP_Observation_eMunicipalCheckup)
* hasMember 0..0

* derivedFrom only Reference(JP_Media_eMunicipalCheckup)




// 各種制約
/*
Invariant: emc-obs-1
Description: "status should be 'final' or 'cancelled'. (status の値は'final'ないし'cancelled'であること。)"
Expression: "status = 'final' or status = 'cancelled'"
Severity: #warning

Invariant: emc-obs-2
Description: "referenceRange.low and high should have the same unit with valueQuantity.(valueQuantityの単位とreferenceRange.low, highの単位が同じであること。)"
Expression: "value.ofType(Quantity).empty() or referenceRange.empty() or ((referenceRange.first().high.empty() or referenceRange.first().high.code = value.ofType(Quantity).code) and (referenceRange.first().low.empty() or referenceRange.first().low.code = value.ofType(Quantity).code))"
Severity: #warning

Invariant: emc-obs-3
Description: "dataAbsentReason should have 'not-performed' or 'error' in case of not performed or not measured.(未実施、測定不能の場合、dataAbsentReasonの値は'not-performed'、'error'であること。)"
Expression: "(status = 'final' and dataAbsentReason.empty()) or (status = 'cancelled' and (dataAbsentReason.coding.code = 'not-performed' or dataAbsentReason.coding.code = 'error'))"
Severity: #warning

Invariant: emc-obs-4
Description: "only status,category,code, and dataAbsentReason elements should be populated in case of not performed.(未実施の場合、status要素、category要素、code要素、及び、dataAbsentReason要素のみ。)"
Expression: "dataAbsentReason.empty() or dataAbsentReason.coding.code != 'not-performed' or (value.empty() and component.empty() and specimen.empty() and interpretation.empty() and effectiveDateTime.empty() and referenceRange.empty() and method.empty())"
Severity: #warning

Invariant: emc-obs-5
Description: "only status,category,code, dataAbsentReason, method, and referenceRange elements should be populated in case of not measured.(測定不能の場合、status要素、category要素、code要素、及び、dataAbsentReason要素のみ。基準値や検査手法コードは、通常の項目と同様に指定できる。)"
Expression: "dataAbsentReason.empty() or dataAbsentReason.coding.code != 'error' or (value.empty() and component.empty() and specimen.empty() and interpretation.empty() and effectiveDateTime.empty())"
Severity: #warning
*/
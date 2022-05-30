






















Profile:        JP_Observation_eMunicipalCheckup
Parent:         JP_Observation_CUPIX
Id:             JP-Observation-eMunicipalCheckup
//Title:          "自治体検診結果報告書　Observationリソース　検査項目情報"
Description:    "自治体検診結果報告書　Observationリソース　検査項目情報"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"
* ^status = #draft
* obeys emc-obs-1 and emc-obs-2 and emc-obs-3 and emc-obs-4 and emc-obs-5

* subject only Reference(JP_Patient_eMunicipalCheckup)

// 検診種別ごとの検診項目コード　code.coding.codeの　の制約を記述する
// slicingで個々に定義する意義はないかもしれないが、残しておく
//-- ここから
* code from $EMCUPX_observation_codes_vs (required)
* code.coding  1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "code"
  * ^slicing.rules = #open

//
* code.coding contains
        obs_9P500000000000011 0..1
    and obs_9P501000000000011 0..1
    and obs_9N737000000000012 0..1
    and obs_9P502000000000011 0..1
    and obs_9P503160800000049 0..1
    and obs_7A030161506144349 0..1
    and obs_7A030000006144311 0..1
    and obs_7A030160806144349 0..1
    and obs_9P504000000000011 0..1
    and obs_9P505160800000049 0..1
    and obs_9P506000000000011 0..1
    and obs_9P507000000000011 0..1
    and obs_9P508160800000049 0..1
    and obs_9P509000000000011  0..1   


//
* code.coding[obs_9P500000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P500000000000011  (exactly)  //  "肺がん検診の過去の受診歴"    // 肺がん一次検診,問診,CD,urn:oid:1.2.392.100495.100.2000

* code.coding[obs_9P501000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P501000000000011 (exactly) //   "肺がん検診時の肺がんに係る症状の有無"    // 肺がん一次検診,問診,CD,urn:oid:1.2.392.100495.100.2052

* code.coding[obs_9N737000000000012]
  * system = $EMCUPX_observation_codes_cs
  * code = #9N737000000000012  (exactly) //   "肺がん検診時の喫煙指数"    // 肺がん一次検診,問診,PQ,

* code.coding[obs_9P502000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P502000000000011  (exactly) //   "肺がん検診の胸部エックス線検査判定"    // 肺がん一次検診,胸部エックス線検査,CD,urn:oid:1.2.392.100495.100.2100

* code.coding[obs_9P503160800000049]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P503160800000049   (exactly) // 肺がん一次検診,胸部エックス線検査,ST,

* code.coding[obs_7A030161506144349]
  * system = $EMCUPX_observation_codes_cs
  * code = #7A030161506144349  (exactly) //   "肺がん検診の喀痰検査受診日"    // 肺がん一次検診,喀痰検査,ST,
* code.coding[obs_7A030000006144311]
  * system = $EMCUPX_observation_codes_cs
  * code = #7A030000006144311  (exactly) //   "肺がん検診の喀痰検査判定"    // 肺がん一次検診,喀痰検査,CD,urn:oid:1.2.392.100495.100.2101

* code.coding[obs_7A030160806144349]
  * system = $EMCUPX_observation_codes_cs
  * code = #7A030160806144349  (exactly)  //   "肺がん検診の喀痰検査所見"    // 肺がん一次検診,喀痰検査,ST,
* code.coding[obs_9P504000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P504000000000011  (exactly)  //   "肺がん検診の精密検査対象有無"    // 肺がん一次検診,検診結果,CD,urn:oid:1.2.392.100495.100.2140

* code.coding[obs_9P505160800000049]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P505160800000049  (exactly)  //   "肺がん検診のその他所見"    // 肺がん一次検診,検診結果,ST,
* code.coding[obs_9P506000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P506000000000011  (exactly)     // 肺がん一次検診,検診結果,CD,urn:oid:1.2.392.100495.100.2010

* code.coding[obs_9P507000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P507000000000011  (exactly)  //   "肺がん検診の精密検査結果"    // 肺がん精密検査,検診結果,CD,urn:oid:1.2.392.100495.100.2150

* code.coding[obs_9P508160800000049]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P508160800000049  (exactly)  //   "肺がん検診の精密検査その他所見"    // 肺がん精密検査,検診結果,ST,
* code.coding[obs_9P509000000000011]
  * system = $EMCUPX_observation_codes_cs
  * code = #9P509000000000011  (exactly)  //   "肺がん検診の精密検査による偶発症の有無"    // 肺がん精密検査,検診結果,CD,urn:oid:1.2.392.100495.100.2011
//--ここまで

// 以下のslicing定義がないと、それぞれのデータタイプが使用できなくなるので必須（理由不明）
//--ここから
* value[x][valueQuantity] 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* value[x][valueString] 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* value[x][valueInteger] 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
* value[x][valueDateTime] 0.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "$this"
  * ^slicing.rules = #open
//--ここまで


// 検診 の結果のvalueSetを検診項目ごとに異なる制約を定義するためのslicing
// 本来はvalue[x]をslicingしたいが、value[x] のmax cardinalityが１以下だとsliceできないので、
// やむをえず maxが1以上である codingでsliceしている。意味的には異なるレベルでのslicingなので推奨はされていない
// 異なる value[x][valueCodeableConcept].coding.system ごとに異なるValueSetをとるため
* value[x][valueCodeableConcept].coding 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open

// 検診種別ごとに検診 の結果のvalueSetを検診項目ごとに異なる制約を定義する
//-- ここから
// 肺がん検診
* value[x][valueCodeableConcept].coding contains
        obs_9P500000000000011 0..1
    and obs_9P501000000000011 0..1
    and obs_9P502000000000011 0..1
    and obs_7A030000006144311 0..1
    and obs_9P504000000000011 0..1
    and obs_9P506000000000011 0..1
    and obs_9P507000000000011 0..1
    and obs_9P509000000000011  0..1   

* value[x][valueCodeableConcept].coding[obs_9P500000000000011]
  * system = "urn:oid:1.2.392.100495.100.2000"  (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2000 (required)
* value[x][valueCodeableConcept].coding[obs_9P501000000000011]
  * system = "urn:oid:1.2.392.100495.100.2052" (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052 (required) 
* value[x][valueCodeableConcept].coding[obs_9P502000000000011]
  * system = "urn:oid:1.2.392.100495.100.2100" (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2100 (required)
* value[x][valueCodeableConcept].coding[obs_7A030000006144311]
  * system = "urn:oid:1.2.392.100495.100.2101" (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2101 (required)
* value[x][valueCodeableConcept].coding[obs_9P504000000000011]
  * system = "urn:oid:1.2.392.100495.100.2140" (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2140 (required)
* value[x][valueCodeableConcept].coding[obs_9P506000000000011]
  * system = "urn:oid:1.2.392.100495.100.2010" (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2010 (required)
* value[x][valueCodeableConcept].coding[obs_9P507000000000011]
  * system = "urn:oid:1.2.392.100495.100.2150" (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2150 (required)
* value[x][valueCodeableConcept].coding[obs_9P509000000000011]
  * system = "urn:oid:1.2.392.100495.100.2011"  (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2011 (required)
//-- ここまで

// 検体材料
* specimen only Reference(JP_Specimen_eMunicipalCheckup)

// 単独検診項目は子供検査項目を含まない
//* hasMember only Reference(JP_Observation_eMunicipalCheckup)
* hasMember 0..0

* derivedFrom only Reference(JP_Media_eMunicipalCheckup)

// 各種制約
Invariant: obs-9P500000000000011
Description: "obs-肺がん検診の過去の受診歴のtypeとsystemgが正しい"
Expression: "code.coding.where(
    system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10' and code =9P500000000000011
    ).exists() implies (
        valueCodeableConcept.coding.system = 'urn:oid:1.2.392.100495.100.2000'
    )"
Severity: #warning



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

Invariant: cat-emc-obs-9P500000000000011-cat
Description: "Observation.category.coding.code should be 'exam'."
Expression: "code = 'exam'"
Severity: #warning

Invariant: cat-emc-obs-9P500000000000011-cat-warning
Description: "Observation.category.coding.code should be 'laboratory'."
Expression: "code = 'laboratory'"
Severity: #warning

Invariant: valueType-CodeableConcept-warning
Description: "valueType-CodeableConcept-warning"
Expression: "Observation.valueCodeableConcept.coding.system.exist() implies (
    Observation.valueCodeableConcept.coding.system = 'http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
)"
Severity: #warning


Invariant: valueType-string-warning
Description: "valueType-warning"
Expression: "Observation.value[x].ofType() is string"
Severity: #warning
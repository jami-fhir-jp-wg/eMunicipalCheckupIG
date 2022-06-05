

RuleSet: Obs_code_coding_slicing(obs_system, obs_cd)
* code.coding[obs_{obs_cd}]
  * system = "{obs_system}"
  * code = #{obs_cd}  (exactly)  

RuleSet: valCC_coding_slicing(laboItemCode, code_system, valueset)
* value[x][valueCodeableConcept].coding[obs_{laboItemCode}]
  * system = "{code_system}"  (exactly)
  * code from {valueset} (required)

[obs_$$cd肺がん検診の過去の受診歴]

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
//--ここから
* value[x][valueCodeableConcept].coding 1.. MS
  * ^slicing.discriminator.type = #value
  * ^slicing.discriminator.path = "system"
  * ^slicing.rules = #open
//--ここまで


//----------















// JP_Observation_eMunicipalCheckupG_egg51.incから展開 
* code.coding contains
        obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201101 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201102 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201103 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201104 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201105 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201106 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201107 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201108 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201109 1..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201110 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201111 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201112 1..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201113 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201114 0..1   

//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201101)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201102)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201103)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201104)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201105)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201106)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201107)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201108)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201109)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201110)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201111)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201112)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201113)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201114)
//--ここまで

//-- ここから
// 肺がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
* value[x][valueCodeableConcept].coding contains
        obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201101 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201102 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201104 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201107 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201109 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201111 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201112 0..1
    and obs_http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-201114  0..1   

* insert valCC_coding_slicing($$cd肺がん検診_item01,$$cs肺がん検診_item01,$$vs肺がん検診_item01)
* insert valCC_coding_slicing($$cd肺がん検診_item02, $$cs肺がん検診_item02, $$vs肺がん検診_item02)
* insert valCC_coding_slicing($$cd肺がん検診_item04, $$cs肺がん検診_item04, $$vs肺がん検診_item04)
* insert valCC_coding_slicing($$cd肺がん検診_item07, $$cs肺がん検診_item07, $$vs肺がん検診_item07)
* insert valCC_coding_slicing($$cd肺がん検診_item09, $$cs肺がん検診_item09, $$vs肺がん検診_item09)
* insert valCC_coding_slicing($$cd肺がん検診_item11, $$cs肺がん検診_item11, $$vs肺がん検診_item11)
* insert valCC_coding_slicing($$cd肺がん検診_item12, $$cs肺がん検診_item12, $$vs肺がん検診_item12)
* insert valCC_coding_slicing($$cd肺がん検診_item14, $$cs肺がん検診_item14, $$vs肺がん検診_item14)
//-- ここまで


//----------











// JP_Observation_eMunicipalCheckupG_egg52.incから展開 
* code.coding contains
        obs_9P52700000000001101 0..1
    and obs_9P52700000000001102 0..1
    and obs_9P52700000000001103 0..1
    and obs_9P52700000000001104 0..1
    and obs_9P52700000000001105 1..1
    and obs_9P52700000000001106 0..1
    and obs_9P52700000000001107 0..1
    and obs_9P52700000000001108 1..1
    and obs_9P52700000000001109 0..1
    and obs_9P52700000000001110 0..1

//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001101)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001102)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001103)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001104)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001105)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001106)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001107)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001108)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001109)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P52700000000001110)
//--ここまで



// 検診種別ごとに検診 の結果のvalueSetを検診項目ごとに異なる制約を定義する
//-- ここから
// 乳がん検診
* value[x][valueCodeableConcept].coding contains
        obs_9P52700000000001101 0..1
    and obs_9P52700000000001102 0..1
    and obs_9P52700000000001103 0..1
    and obs_9P52700000000001105 1..1
    and obs_9P52700000000001107 0..1
    and obs_9P52700000000001108 1..1
    and obs_9P52700000000001110 0..1

* insert valCC_coding_slicing($$cd乳がん検診_item01,$$cs乳がん検診_item01,$$vs乳がん検診_item01)
* insert valCC_coding_slicing($$cd乳がん検診_item02, $$cs乳がん検診_item02, $$vs乳がん検診_item02)
* insert valCC_coding_slicing($$cd乳がん検診_item03, $$cs乳がん検診_item03, $$vs乳がん検診_item03)
* insert valCC_coding_slicing($$cd乳がん検診_item05, $$cs乳がん検診_item05, $$vs乳がん検診_item05)
* insert valCC_coding_slicing($$cd乳がん検診_item06, $$cs乳がん検診_item06, $$vs乳がん検診_item06)
* insert valCC_coding_slicing($$cd乳がん検診_item08, $$cs乳がん検診_item08, $$vs乳がん検診_item08)
* insert valCC_coding_slicing($$cd乳がん検診_item10, $$cs乳がん検診_item10, $$vs乳がん検診_item10)

//-- ここまで

// 検体材料
* specimen only Reference(JP_Specimen_eMunicipalCheckup)

// 単独検診項目は子供検査項目を含まない
//* hasMember only Reference(JP_Observation_eMunicipalCheckup)
* hasMember 0..0

* derivedFrom only Reference(JP_Media_eMunicipalCheckup)

// 各種制約
Invariant: obs-$$cd肺がん検診の過去の受診歴
Description: "obs-肺がん検診の過去の受診歴のtypeとsystemgが正しい"
Expression: "code.coding.where(
    system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10' and code =$$cd肺がん検診の過去の受診歴
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
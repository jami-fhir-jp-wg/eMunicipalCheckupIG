


RuleSet: Obs_code_coding_slicing(obs_system, obs_cd)
* code.coding[obs_{obs_cd}]
  * system = "{obs_system}"
  * code = #{obs_cd}  (exactly)  

RuleSet: valCC_coding_slicing(laboItemCode, code_system, valueset)
* value[x][valueCodeableConcept].coding[obs_{laboItemCode}]
  * system = "{code_system}"  (exactly)
  * code from {valueset} (required)

RuleSet: valCC_valuset_slicing(valuesetNumber)
* value[x][valueCodeableConcept].coding contains
    valueSet{valuesetNumber} 0..1
* value[x][valueCodeableConcept].coding[valueSet{valuesetNumber}]
  * system = "urn:oid:1.2.392.100495.100.{valuesetNumber}"   (exactly)
  * code from http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-{valuesetNumber}  (required)

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
* insert valCC_valuset_slicing(2000)
* insert valCC_valuset_slicing(2010)
* insert valCC_valuset_slicing(2011)
* insert valCC_valuset_slicing(2050)
* insert valCC_valuset_slicing(2051)
* insert valCC_valuset_slicing(2052)
* insert valCC_valuset_slicing(2053)
* insert valCC_valuset_slicing(2054)
* insert valCC_valuset_slicing(2100)
* insert valCC_valuset_slicing(2101)
* insert valCC_valuset_slicing(2140)
* insert valCC_valuset_slicing(2150)
* insert valCC_valuset_slicing(2200)
* insert valCC_valuset_slicing(2240)
* insert valCC_valuset_slicing(2250)
* insert valCC_valuset_slicing(2340)
* insert valCC_valuset_slicing(2350)
* insert valCC_valuset_slicing(2400)
* insert valCC_valuset_slicing(2440)
* insert valCC_valuset_slicing(2450)
* insert valCC_valuset_slicing(2500)
* insert valCC_valuset_slicing(2540)
* insert valCC_valuset_slicing(2550)
* insert valCC_valuset_slicing(2640)
* insert valCC_valuset_slicing(2641)
* insert valCC_valuset_slicing(2650)
* insert valCC_valuset_slicing(2700)
* insert valCC_valuset_slicing(2701)
* insert valCC_valuset_slicing(2702)
* insert valCC_valuset_slicing(2703)
* insert valCC_valuset_slicing(2704)
* insert valCC_valuset_slicing(2705)
* insert valCC_valuset_slicing(2706)
* insert valCC_valuset_slicing(2740)
* insert valCC_valuset_slicing(2750)
* insert valCC_valuset_slicing(2800)
* insert valCC_valuset_slicing(2801)
* insert valCC_valuset_slicing(2802)
* insert valCC_valuset_slicing(2803)
* insert valCC_valuset_slicing(2804)
* insert valCC_valuset_slicing(2805)
* insert valCC_valuset_slicing(2806)
//--ここまで


//----------
//-- ここから
// 肺がん検診
// JP_Observation_eMunicipalCheckupG_egg51.incから展開 
* obeys code-9P500000000000011-valueCodingSystem-2000
    and code-9P501000000000011-valueCodingSystem-2052
    and code-9P502000000000011-valueCodingSystem-2100
    and code-7A030000006144311-valueCodingSystem-2101
    and code-9P504000000000011-valueCodingSystem-2140
    and code-9P506000000000011-valueCodingSystem-2010
    and code-9P507000000000011-valueCodingSystem-2150
    and code-9P509000000000011-valueCodingSystem-2011
* code.coding contains
        obs_9P500000000000011 0..1 //過去の受診歴
    and obs_9P501000000000011 0..1 //がんに係る症状の有無
    and obs_9N737000000000012 0..1 //喫煙指数
    and obs_9P502000000000011 0..1 //胸部エックス線検査判定
    and obs_9P503160800000049 0..1 //胸部エックス線検査判定
    and obs_7A030161506144349 0..1 //喀痰検査受診日
    and obs_7A030000006144311 0..1 //喀痰検査判定
    and obs_7A030160806144349 0..1 //喀痰検査所見
    and obs_9P504000000000011 0..1 //精密検査対象有無
    and obs_9P505160800000049 0..1 //その他所見
    and obs_9P506000000000011 0..1 //偶発症の有無
    and obs_9P507000000000011 0..1 //精密検査結果
    and obs_9P508160800000049 0..1 //精密検査その他所見
    and obs_9P509000000000011 0..1 //精密検査による偶発症の有無
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P500000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P501000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N737000000000012)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P502000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P503160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 7A030161506144349)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 7A030000006144311)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 7A030160806144349)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P504000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P505160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P506000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P507000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P508160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P509000000000011)
//--ここまで
//-- ここから
// 肺がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P500000000000011 0..1 //過去の受診歴
    and obs_9P501000000000011 0..1 //がんに係る症状の有無
    and obs_9P502000000000011 0..1 //胸部エックス線検査判定
    and obs_7A030000006144311 0..1 //喀痰検査判定
    and obs_9P504000000000011 0..1 //精密検査対象有無
    and obs_9P506000000000011 0..1 //偶発症の有無
    and obs_9P507000000000011 0..1 //精密検査結果
    and obs_9P509000000000011 0..1 //精密検査による偶発症の有無   
* insert valCC_coding_slicing(9P500000000000011, urn:oid:1.2.392.100495.100.2000, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2000)
* insert valCC_coding_slicing(9P501000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9P502000000000011, urn:oid:1.2.392.100495.100.2100, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2100)
* insert valCC_coding_slicing(7A030000006144311, urn:oid:1.2.392.100495.100.2140, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2140)
* insert valCC_coding_slicing(9P504000000000011, urn:oid:1.2.392.100495.100.$$oidnum10, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-$$oidnum10)
* insert valCC_coding_slicing(9P506000000000011, urn:oid:1.2.392.100495.100.2010, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2010)
* insert valCC_coding_slicing(9P507000000000011, urn:oid:1.2.392.100495.100.2150, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2150)
* insert valCC_coding_slicing(9P509000000000011, urn:oid:1.2.392.100495.100.2011, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2011)
*/
//-- ここまで
//----------
//-- ここから
// 肺がん検診
// JP_Observation_eMunicipalCheckupG_egg52.incから展開 
* obeys code-9P520000000000011-valueCodingSystem-2000
    and code-9P521000000000011-valueCodingSystem-2052
    and code-9N281000000000011-valueCodingSystem-2200
    and code-9P522000000000011-valueCodingSystem-2240
    and code-9P524000000000011-valueCodingSystem-2010
    and code-9P525000000000011-valueCodingSystem-2250
    and code-9P527000000000011-valueCodingSystem-2011
* code.coding contains
        obs_9P520000000000011 0..1
    and obs_9P521000000000011 0..1
    and obs_9N281000000000011 0..1
    and obs_9N281160800000049 0..1
    and obs_9P522000000000011 0..1
    and obs_9P523160800000049 0..1
    and obs_9P524000000000011 0..1
    and obs_9P525000000000011 0..1
    and obs_9P526160800000049 0..1
    and obs_9P527000000000011 0..1
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P520000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P521000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N281000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N281160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P522000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P523160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P524000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P525000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P526160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P527000000000011)
//--ここまで
// 検診種別ごとに検診 の結果のvalueSetを検診項目ごとに異なる制約を定義する
//-- ここから
// 乳がん検診
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P520000000000011 0..1
    and obs_9P521000000000011 0..1
    and obs_9N281000000000011 0..1
    and obs_9P522000000000011 0..1
    and obs_9P524000000000011 0..1
    and obs_9P525000000000011 0..1
    and obs_9P527000000000011 0..1
* insert valCC_coding_slicing(9P520000000000011, urn:oid:1.2.392.100495.100..2000, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2000)
* insert valCC_coding_slicing(9P521000000000011, urn:oid:1.2.392.100495.100..2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9N281000000000011, urn:oid:1.2.392.100495.100..2200, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2200)
* insert valCC_coding_slicing(9P522000000000011, urn:oid:1.2.392.100495.100..2240, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2240)
* insert valCC_coding_slicing(9P524000000000011, urn:oid:1.2.392.100495.100..2010, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2010)
* insert valCC_coding_slicing(9P525000000000011, urn:oid:1.2.392.100495.100..2250, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2250)
* insert valCC_coding_slicing(9P527000000000011, urn:oid:1.2.392.100495.100..2011, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2011)
*/
//-- ここまで
//----------
//---- ここから
//----------
//---- ここから
// 胃がん検診
// JP_Observation_eMunicipalCheckupG_egg53.incから展開 
* code.coding contains
        obs_9P540000000000011 0..1
    and obs_9P541000000000011 0..1
    and obs_9P542160700000011 0..1
    and obs_9P543160800000049 0..1
    and obs_9P544160700000011 0..1
    and obs_9P545160800000049 0..1
    and obs_9P546000000000011 0..1
    and obs_9P547160800000049 0..1
    and obs_9P548000000000011 0..1
    and obs_9P549000000000011 0..1
    and obs_9P550160800000049 0..1
    and obs_9P551000000000011 0..1
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P540000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P541000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P542160700000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P543160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P544160700000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P545160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P546000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P547160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P548000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P549000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P550160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P551000000000011)
//--ここまで
//-- ここから
// 胃がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P540000000000011 0..1
    and obs_9P541000000000011 0..1
    and obs_9P542160700000011 0..1
    and obs_9P544160700000011 0..1
    and obs_9P546000000000011 0..1
    and obs_9P548000000000011 0..1
    and obs_9P549000000000011 0..1
    and obs_9P551000000000011 0..1
* insert valCC_coding_slicing(9P540000000000011, urn:oid:1.2.392.100495.100.2000, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2000)
* insert valCC_coding_slicing(9P541000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9P542160700000011, urn:oid:1.2.392.100495.100.2050, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)
* insert valCC_coding_slicing(9P544160700000011, urn:oid:1.2.392.100495.100.2050, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)
* insert valCC_coding_slicing(9P546000000000011, urn:oid:1.2.392.100495.100.2340, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2340)
* insert valCC_coding_slicing(9P548000000000011, urn:oid:1.2.392.100495.100.2010, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2010)
* insert valCC_coding_slicing(9P549000000000011, urn:oid:1.2.392.100495.100.2350, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2350)
* insert valCC_coding_slicing(9P551000000000011, urn:oid:1.2.392.100495.100.2011, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2011)
*/
//-- ここまで
//--------
// 子宮頸がん検診
//-- ここから
// 子宮頸がん検診
// JP_Observation_eMunicipalCheckupG_egg54.incから展開 
* code.coding contains
        obs_9P560000000000011 0..1
    and obs_9P561000000000011 0..1
    and obs_9N291160700000011 0..1
    and obs_9N291160800000049 0..1
    and obs_9N296160700000011 0..1
    and obs_9N296160800000049 0..1
    and obs_7A021000008543311 0..1
    and obs_7A021160808543349 0..1
    and obs_9P562000000000011 0..1
    and obs_9P563160800000049 0..1
    and obs_9P564000000000011 0..1
    and obs_9P565000000000011 0..1
    and obs_9P566160800000049 0..1
    and obs_9P567000000000011 0..1   
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P560000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P561000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N291160700000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N291160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N296160700000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N296160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 7A021000008543311)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 7A021160808543349)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P562000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P563160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P564000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P565000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P566160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P567000000000011)
//--ここまで
//-- ここから
// 子宮頸がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P560000000000011 0..1
    and obs_9P561000000000011 0..1
    and obs_9N291160700000011 0..1
    and obs_9N296160700000011 0..1
    and obs_7A021000008543311 0..1
    and obs_9P562000000000011 0..1
    and obs_9P564000000000011 0..1
    and obs_9P565000000000011 0..1   
    and obs_9P567000000000011 0..1   
* insert valCC_coding_slicing(9P560000000000011, urn:oid:1.2.392.100495.100.2000, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2000)
* insert valCC_coding_slicing(9P561000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9N291160700000011, urn:oid:1.2.392.100495.100.2050, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)
* insert valCC_coding_slicing(9N296160700000011, urn:oid:1.2.392.100495.100.2050, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)
* insert valCC_coding_slicing(7A021000008543311, urn:oid:1.2.392.100495.100.2400, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2400)
* insert valCC_coding_slicing(9P562000000000011, urn:oid:1.2.392.100495.100.2440, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2440)
* insert valCC_coding_slicing(9P564000000000011, urn:oid:1.2.392.100495.100.2010, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2010)
* insert valCC_coding_slicing(9P565000000000011, urn:oid:1.2.392.100495.100.2450, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2450)
* insert valCC_coding_slicing(9P567000000000011, urn:oid:1.2.392.100495.100.2011, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2011)
*/
//-- ここまで
//-----
//-- ここから
// 大腸がん検診
// JP_Observation_eMunicipalCheckupG_egg55.incから展開 
* code.coding contains
        obs_9P580000000000011 0..1
    and obs_9P581000000000011 0..1
    and obs_1B040000001599811 0..1
    and obs_1B040160801599849 0..1
    and obs_9P582000000000011 0..1
    and obs_9P583160800000049 0..1
    and obs_9P584000000000011 0..1
    and obs_9P585000000000011 0..1
    and obs_9P586160800000049 0..1
    and obs_9P587000000000011 0..1
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P580000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P581000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 1B040000001599811)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 1B040160801599849)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P582000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P583160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P584000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P585000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P586160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P587000000000011)
//--ここまで
//-- ここから
// 大腸がん検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P580000000000011 0..1
    and obs_9P581000000000011 0..1
    and obs_1B040000001599811 0..1
    and obs_9P582000000000011 0..1
    and obs_9P584000000000011 0..1
    and obs_9P585000000000011 0..1
    and obs_9P587000000000011 0..1
* insert valCC_coding_slicing(9P580000000000011, urn:oid:1.2.392.100495.100.2000, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2000)
* insert valCC_coding_slicing(9P581000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(1B040000001599811, urn:oid:1.2.392.100495.100.2500, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2500)
* insert valCC_coding_slicing(9P582000000000011, urn:oid:1.2.392.100495.100.2540, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2540)
* insert valCC_coding_slicing(9P584000000000011, urn:oid:1.2.392.100495.100.2010, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2010)
* insert valCC_coding_slicing(9P585000000000011, urn:oid:1.2.392.100495.100.2550, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2550)
* insert valCC_coding_slicing(9P587000000000011, urn:oid:1.2.392.100495.100.2011, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2011)
*/
//-- ここまで
//-----------
//-- ここから
// 肝炎ウイルス検診
// JP_Observation_eMunicipalCheckupG_egg56.incから展開 
* code.coding contains
        obs_9P600000000000011 0..1
    and obs_9P601160800000049 0..1
    and obs_9P602000000000011 0..1
    and obs_9P603160800000049 0..1
    and obs_9P604000000000011 0..1
    and obs_9P605160800000049 0..1
    and obs_9P606000000000011 0..1
    and obs_9P607000000000011 0..1
    and obs_9P608160800000049 0..1
    and obs_9P609000000000011 0..1
    and obs_9P610160800000049 0..1
    and obs_9P611000000000011 0..1
    and obs_9P612160800000049 0..1
    and obs_9P613000000000011 0..1   
    and obs_9P614160800000049 0..1   
    and obs_9P615000000000011 0..1   
    and obs_9N401000000000011 0..1   
    and obs_9P616000000000011 0..1   
    and obs_9P617160800000049 0..1   
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P600000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P601160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P602000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P603160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P604000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P605160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P606000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P607000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P608160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P609000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P610160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P611000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P612160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P613000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P614160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P615000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N401000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P616000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P617160800000049)
//--ここまで
//-- ここから
// 肝炎ウイルス検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P600000000000011 0..1
    and obs_9P602000000000011 0..1
    and obs_9P604000000000011 0..1
    and obs_9P606000000000011 0..1
    and obs_9P607000000000011 0..1
    and obs_9P609000000000011 0..1
    and obs_9P611000000000011 0..1
    and obs_9P613000000000011 0..1   
    and obs_9P615000000000011 0..1   
    and obs_9N401000000000011 0..1   
    and obs_9P616000000000011 0..1   
* insert valCC_coding_slicing(9P600000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9P602000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P604000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P606000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P607000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P609000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P611000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P613000000000011, urn:oid:1.2.392.100495.100.2054, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2054)
* insert valCC_coding_slicing(9P615000000000011, urn:oid:1.2.392.100495.100.2640, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2640)
* insert valCC_coding_slicing(9N401000000000011, urn:oid:1.2.392.100495.100.2641, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2641)
* insert valCC_coding_slicing(9P616000000000011, urn:oid:1.2.392.100495.100.2650, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2650)
*/
//-- ここまで
//----
//-- ここから
// 骨粗鬆症検診
// JP_Observation_eMunicipalCheckupG_egg57.incから展開 
* code.coding contains
        obs_9P620000000000011 0..1
    and obs_9P621000000000011 0..1
    and obs_9N006000000000001 0..1
    and obs_9N001000000000001 0..1
    and obs_9P622000000000011 0..1
    and obs_9P623160800000049 0..1
    and obs_9P624000000000011 0..1
    and obs_9P625000000000011 0..1
    and obs_9P626000000000001 0..1
    and obs_9P627000000000011 0..1
    and obs_9P628000000000011 0..1
    and obs_9P629160800000049 0..1
    and obs_9P630000000000011 0..1
    and obs_9P631000000000011 0..1   
    and obs_9P632000000000011 0..1
    and obs_9P633000000000001 0..1
    and obs_9P634160800000049 0..1
    and obs_9Z507195600000001 0..1
    and obs_9Z507195700000001 0..1
    and obs_9Z507195800000049 0..1
    and obs_9Z507195900000049 0..1
    and obs_9Z507000000000011 0..1
    and obs_9Z507160800000049 0..1
    and obs_9Z531195600000001 0..1   
    and obs_9Z531195700000001 0..1
    and obs_9Z531195800000049 0..1
    and obs_9Z531195900000049 0..1
    and obs_9Z531000000000011 0..1
    and obs_9Z531160800000049 0..1
    and obs_9Z536195600000001 0..1
    and obs_9Z536195700000001 0..1
    and obs_9Z536195800000049 0..1
    and obs_9Z536195900000049 0..1
    and obs_9Z536000000000011 0..1   
    and obs_9Z536160800000049 0..1
    and obs_9Z541195600000001 0..1
    and obs_9Z541195700000001 0..1
    and obs_9Z541195800000049 0..1
    and obs_9Z541195900000049 0..1
    and obs_9Z541000000000011 0..1
    and obs_9Z541160800000049 0..1
    and obs_9P637000000000011 0..1
    and obs_9P638000000000011 0..1
    and obs_9P639160800000049 0..1   
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)の出力
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P620000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P621000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N006000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9N001000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P622000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P623160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P624000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P625000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P626000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P627000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P628000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P629160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P630000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P631000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P632000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P633000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P634160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z507195600000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z507195700000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z507195800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z507195900000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z507000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z507160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z531195600000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z531195700000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z531195800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z531195900000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z531000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z531160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z536195600000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z536195700000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z536195800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z536195900000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z536000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z536160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z541195600000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z541195700000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z541195800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z541195900000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z541000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9Z541160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P637000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P638000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P639160800000049)
//--ここまで
//-- ここから
// 骨粗鬆症検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P620000000000011 0..1
    and obs_9P621000000000011 0..1
    and obs_9P622000000000011 0..1
    and obs_9P624000000000011 0..1
    and obs_9P625000000000011 0..1
    and obs_9P627000000000011 0..1
    and obs_9P628000000000011 0..1
    and obs_9P630000000000011 0..1
    and obs_9P631000000000011 0..1
    and obs_9P632000000000011 0..1
    and obs_9Z507000000000011 0..1
    and obs_9Z531000000000011 0..1
    and obs_9Z536000000000011 0..1
    and obs_9Z541000000000011 0..1
    and obs_9P637000000000011 0..1
    and obs_9P638000000000011 0..1
* insert valCC_coding_slicing(9P620000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9P621000000000011, urn:oid:1.2.392.100495.100.2700, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2700)
* insert valCC_coding_slicing(9P622000000000011, urn:oid:1.2.392.100495.100.2051, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P624000000000011, urn:oid:1.2.392.100495.100.2052, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2052)
* insert valCC_coding_slicing(9P625000000000011, urn:oid:1.2.392.100495.100.2701, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2701)
* insert valCC_coding_slicing(9P627000000000011, urn:oid:1.2.392.100495.100.2702, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2702)
* insert valCC_coding_slicing(9P628000000000011, urn:oid:1.2.392.100495.100.2051, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P630000000000011, urn:oid:1.2.392.100495.100.2703, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2703)
* insert valCC_coding_slicing(9P631000000000011, urn:oid:1.2.392.100495.100.2704, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2704)
* insert valCC_coding_slicing(9P632000000000011, urn:oid:1.2.392.100495.100.2705, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2705)
* insert valCC_coding_slicing(9Z507000000000011, urn:oid:1.2.392.100495.100.2706, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2706)
* insert valCC_coding_slicing(9Z531000000000011, urn:oid:1.2.392.100495.100.2706, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2706)
* insert valCC_coding_slicing(9Z536000000000011, urn:oid:1.2.392.100495.100.2706, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2706)
* insert valCC_coding_slicing(9Z541000000000011, urn:oid:1.2.392.100495.100.2706, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2706)
* insert valCC_coding_slicing(9P637000000000011, urn:oid:1.2.392.100495.100.2740, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2740)
* insert valCC_coding_slicing(9P638000000000011, urn:oid:1.2.392.100495.100.2750, http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2750)
*/
//-- ここまで
//----歯周疾患検診
//-- ここから
//  歯周疾患検診
// JP_Observation_eMunicipalCheckupG_egg58.incから展開 
* code.coding contains
        obs_9P650000000000011 0..1
    and obs_9P651000000000011 0..1
    and obs_9P652000000000011 0..1
    and obs_9P653000000000011 0..1
    and obs_9P654000000000001 0..1
    and obs_9P655000000000001 0..1
    and obs_9P656000000000001 0..1
    and obs_9P657000000000011 0..1
    and obs_9P658000000000011 0..1
    and obs_9P659000000000011 0..1
    and obs_9P660000000000011 0..1
    and obs_9P661000000000011 0..1
    and obs_9P662160800000049 0..1
    and obs_9P663000000000001 0..1   
    and obs_9P664000000000001 0..1
    and obs_9P665000000000001 0..1
    and obs_9P666000000000001 0..1
    and obs_9P667000000000001 0..1
    and obs_9P668000000000001 0..1
    and obs_9P669000000000001 0..1
    and obs_9P670000000000011 0..1
    and obs_9P671000000000011 0..1
    and obs_9P672000000000011 0..1
    and obs_9P673000000000011 0..1   
    and obs_9P674000000000011 0..1
    and obs_9P675000000000011 0..1
    and obs_9P676000000000011 0..1
    and obs_9P677000000000011 0..1
    and obs_9P678000000000011 0..1
    and obs_9P679000000000011 0..1
    and obs_9P680000000000011 0..1
    and obs_9P681000000000011 0..1
    and obs_9P682000000000011 0..1
    and obs_9P683000000000011 0..1   
    and obs_9P684000000000011 0..1
    and obs_9P685000000000011 0..1
    and obs_9P686000000000011 0..1
    and obs_9P687000000000011 0..1
    and obs_9P688000000000011 0..1
    and obs_9P689160800000049 0..1
    and obs_9P690000000000011 0..1
    and obs_9P691000000000011 0..1
    and obs_9P692160800000049 0..1
//-- ここから 検査項目JLAC10のsystem urlと項目コード（JLAC10)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P650000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P651000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P652000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P653000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P654000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P655000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P656000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P657000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P658000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P659000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P660000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P661000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P662160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P663000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P664000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P665000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P666000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P667000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P668000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P669000000000001)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P670000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P671000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P672000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P673000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P674000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P675000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P676000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P677000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P678000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P679000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P680000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P681000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P682000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P683000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P684000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P685000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P686000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P687000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P688000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P689160800000049)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P690000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P691000000000011)
* insert Obs_code_coding_slicing(http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10, 9P692160800000049)
//--ここまで
//-- ここから
//  歯周疾患検診
// 検診種別ごとに検診 の結果のvalueSet へのbindingを検診項目ごとに異なる制約として定義する
/*
* value[x][valueCodeableConcept].coding contains
        obs_9P650000000000011 0..1
    and obs_9P651000000000011 0..1
    and obs_9P652000000000011 0..1
    and obs_9P653000000000011 0..1
    and obs_9P657000000000011 0..1
    and obs_9P658000000000011 0..1
    and obs_9P659000000000011 0..1
    and obs_9P660000000000011 0..1
    and obs_9P661000000000011 0..1
    and obs_9P670000000000011 0..1
    and obs_9P671000000000011 0..1
    and obs_9P672000000000011 0..1
    and obs_9P674000000000011 0..1
    and obs_9P675000000000011 0..1
    and obs_9P676000000000011 0..1
    and obs_9P677000000000011 0..1  
    and obs_9P678000000000011 0..1
    and obs_9P679000000000011 0..1
    and obs_9P680000000000011 0..1
    and obs_9P681000000000011 0..1
    and obs_9P682000000000011 0..1
    and obs_9P683000000000011 0..1
    and obs_9P684000000000011 0..1
    and obs_9P685000000000011 0..1  
    and obs_9P686000000000011 0..1
    and obs_9P687000000000011 0..1
    and obs_9P688000000000011 0..1  
* insert valCC_coding_slicing(9P650000000000011, urn:oid:1.2.392.100495.100.2800,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2800)
* insert valCC_coding_slicing(9P651000000000011, urn:oid:1.2.392.100495.100.2801,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2801)
* insert valCC_coding_slicing(9P652000000000011, urn:oid:1.2.392.100495.100.2053,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2053)
* insert valCC_coding_slicing(9P653000000000011, urn:oid:1.2.392.100495.100.2802,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2802)
* insert valCC_coding_slicing(9P657000000000011, urn:oid:1.2.392.100495.100.2051,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P658000000000011, urn:oid:1.2.392.100495.100.2051,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P659000000000011, urn:oid:1.2.392.100495.100.2051,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P660000000000011, urn:oid:1.2.392.100495.100.2051,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P661000000000011, urn:oid:1.2.392.100495.100.2051,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2051)
* insert valCC_coding_slicing(9P670000000000011, urn:oid:1.2.392.100495.100.2803,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2803)
* insert valCC_coding_slicing(9P671000000000011, urn:oid:1.2.392.100495.100.2803,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2803)
* insert valCC_coding_slicing(9P672000000000011, urn:oid:1.2.392.100495.100.2803,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2803)
* insert valCC_coding_slicing(9P674000000000011, urn:oid:1.2.392.100495.100.2803,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2803)
* insert valCC_coding_slicing(9P675000000000011, urn:oid:1.2.392.100495.100.2803,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2803)
* insert valCC_coding_slicing(9P676000000000011, urn:oid:1.2.392.100495.100.2803,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2803)
* insert valCC_coding_slicing(9P677000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)  
* insert valCC_coding_slicing(9P678000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)
* insert valCC_coding_slicing(9P679000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)
* insert valCC_coding_slicing(9P680000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)
* insert valCC_coding_slicing(9P681000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)
* insert valCC_coding_slicing(9P682000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)
* insert valCC_coding_slicing(9P683000000000011, urn:oid:1.2.392.100495.100.2804,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2804)
* insert valCC_coding_slicing(9P684000000000011, urn:oid:1.2.392.100495.100.2805,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2805)
* insert valCC_coding_slicing(9P685000000000011, urn:oid:1.2.392.100495.100.2806,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2806)  
* insert valCC_coding_slicing(9P686000000000011, urn:oid:1.2.392.100495.100.2050,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)
* insert valCC_coding_slicing(9P687000000000011, urn:oid:1.2.392.100495.100.2050,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)
* insert valCC_coding_slicing(9P688000000000011, urn:oid:1.2.392.100495.100.2050,  http://jpfhir/eMunicipalCheckup/ValueSet/valueSet-2050)  
*/
//-- ここまで

// 検体材料
* specimen only Reference(JP_Specimen_eMunicipalCheckup)

// 単独検診項目は子供検査項目を含まない
//
* hasMember only Reference(JP_Observation_eMunicipalCheckup)
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

//----------
Invariant: code-9P500000000000011-valueCodingSystem-2000
Severity: #error
Description: "9P500000000000011 2000"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P500000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2000'
    )
"
 
Invariant: code-9P501000000000011-valueCodingSystem-2052
Severity: #error
Description: "9P501000000000011 2052"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P501000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2052'
    )
"
 
Invariant: code-9P502000000000011-valueCodingSystem-2100
Severity: #error
Description: "9P502000000000011 2100"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P502000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2100'
    )
"
 
Invariant: code-7A030000006144311-valueCodingSystem-2101
Severity: #error
Description: "7A030000006144311 2101"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='7A030000006144311').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2101'
    )
"
 
Invariant: code-9P504000000000011-valueCodingSystem-2140
Severity: #error
Description: "9P504000000000011 2140"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P504000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2140'
    )
"
 
Invariant: code-9P506000000000011-valueCodingSystem-2010
Severity: #error
Description: "9P506000000000011 2010"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P506000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2010'
    )
"
 
Invariant: code-9P507000000000011-valueCodingSystem-2150
Severity: #error
Description: "9P507000000000011 2150"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P507000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2150'
    )
"
 
Invariant: code-9P509000000000011-valueCodingSystem-2011
Severity: #error
Description: "9P509000000000011 2011"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P509000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2011'
    )
"


//----------
Invariant: code-9P520000000000011-valueCodingSystem-2000
Severity: #error
Description: "9P520000000000011 2000"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P520000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2000'
    )
"
 
Invariant: code-9P521000000000011-valueCodingSystem-2052
Severity: #error
Description: "9P521000000000011 2052"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P521000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2052'
    )
"
 
Invariant: code-9N281000000000011-valueCodingSystem-2200
Severity: #error
Description: "9N281000000000011 2200"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9N281000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2200'
    )
"
 
Invariant: code-9P522000000000011-valueCodingSystem-2240
Severity: #error
Description: "9P522000000000011 2240"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P522000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2240'
    )
"
 
Invariant: code-9P524000000000011-valueCodingSystem-2010
Severity: #error
Description: "9P524000000000011 2010"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P524000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2010'
    )
"
 
Invariant: code-9P525000000000011-valueCodingSystem-2250
Severity: #error
Description: "9P525000000000011 2250"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P525000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2250'
    )
"
 
Invariant: code-9P527000000000011-valueCodingSystem-2011
Severity: #error
Description: "9P527000000000011 2011"
Expression: 
  "  (
    code.coding.where(system='http://jpfhir.jp/fhir/eCheckup/CodeSystem/jlac10'
        and code='9P527000000000011').exists()
      )
    implies (
        valueCodeableConcept.coding[0].system = 'urn:oid:1.2.392.100495.100.2011'
    )
"
 


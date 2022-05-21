Profile:        JP_Composition_eMunicipalCheckup_510
Parent:         JP_Composition_eMunicipalCheckup
Id:             JP-Composition-eMunicipalCheckup-510
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報(肺がん一次検診と精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup_510"
* ^status = #draft

* category 1..1 MS
  * coding 1..1 MS
    * code = #51 (exactly)

//検査結果セクション
* section[OBSERVATION]

//  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry contains
        Group_9P500 0..1 MS and         // "検査結果情報エントリ 胸部エックス線検査"
        9P502000000000011 0..1 MS and       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査判定"
        9P503160800000049 0..1 MS and       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査所見"
        Group_7A030 0..1 MS and         // "検査結果情報エントリ 喀痰検査"
        7A030161506144349 0..1 MS and       // "検査結果情報エントリ 肺がん検診の喀痰検査受診日"
        7A030000006144311 0..1 MS and       // "検査結果情報エントリ 肺がん検診の喀痰検査判定"
        7A030160806144349 0..1 MS and       // "検査結果情報エントリ 肺がん検診の喀痰検査所見"
        9P504000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
        9P505160800000049 0..1 MS and   // "検査結果情報エントリ 肺がん検診のその他所見"
        9P506000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診による偶発症の有無"
        9P507000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査結果"
        9P508160800000049 0..1 MS and   // "検査結果情報エントリ 肺がん検診の精密検査その他所見"
        9P509000000000011 0..1 MS       // "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"

  * entry[COV] only Reference(JP_Coverage_eMunicipalCheckup)
    * ^short = "検査結果セクションに含まれる保険証情報および受診券情報をあらわすCoverageリソースへの参照。"
  * entry[Group_9P500] only Reference(JP_Observation_eMunicipalCheckup_Group_9P500)
    * ^short = "検査結果セクションに含まれる 胸部エックス線検査 をあらわすObservationリソースへの参照。"
  * entry[9P502000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P502000000000011)
    * ^short = "検査結果セクションに含まれる 肺がん検診の胸部エックス線検査判定 をあらわすObservationリソースへの参照。"
  * entry[9P503160800000049] only Reference(JP_Observation_eMunicipalCheckup_9P503160800000049)
    * ^short = "検査結果セクションに含まれる 肺がん検診の胸部エックス線検査所見 をあらわすObservationリソースへの参照。"
  * entry[Group_7A030] only Reference(JP_Observation_eMunicipalCheckup_Group_7A030)
    * ^short = "検査結果セクションに含まれる 喀痰検査 をあらわすObservationリソースへの参照。"
  * entry[7A030161506144349] only Reference(JP_Observation_eMunicipalCheckup_7A030161506144349)
    * ^short = "検査結果セクションに含まれる 肺がん検診の喀痰検査受診日 をあらわすObservationリソースへの参照。"
  * entry[7A030000006144311] only Reference(JP_Observation_eMunicipalCheckup_7A030000006144311)
    * ^short = "検査結果セクションに含まれる 肺がん検診の喀痰検査判定 をあらわすObservationリソースへの参照。"
  * entry[7A030160806144349] only Reference(JP_Observation_eMunicipalCheckup_7A030160806144349)
    * ^short = "検査結果セクションに含まれる 肺がん検診の喀痰検査所見 をあらわすObservationリソースへの参照。"
  * entry[9P504000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P504000000000011)
    * ^short = "検査結果セクションに含まれる 肺がん検診の精密検査対象有無 をあらわすObservationリソースへの参照。"
  * entry[9P505160800000049] only Reference(JP_Observation_eMunicipalCheckup_9P505160800000049)
    * ^short = "検査結果セクションに含まれる 肺がん検診のその他所見 をあらわすObservationリソースへの参照。"
  * entry[9P506000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P506000000000011)
    * ^short = "検査結果セクションに含まれる 肺がん検診による偶発症の有無 をあらわすObservationリソースへの参照。"
  * entry[9P507000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P507000000000011)
    * ^short = "検査結果セクションに含まれる 肺がん検診の精密検査結果 をあらわすObservationリソースへの参照。"
  * entry[9P508160800000049] only Reference(JP_Observation_eMunicipalCheckup_9P508160800000049)
    * ^short = "検査結果セクションに含まれる 肺がん検診の精密検査その他所見 をあらわすObservationリソースへの参照。"
  * entry[9P509000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P509000000000011)
    * ^short = "検査結果セクションに含まれる 肺がん検診の精密検査による偶発症の有無 をあらわすObservationリソースへの参照。"

//TODO Invariantsで Observation 1> Coverage 0..2になっているか確認

//問診結果セクション
* section[QUESTIONAIRRE]
//  * entry 1..*
//  * entry 3..3
  * entry 0..3
    * ^slicing.discriminator.type = #profile
    * ^slicing.discriminator.path = "resolve()"
    * ^slicing.rules = #closed
  * entry contains
        9P500000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診の過去の受診歴"
        9P501000000000011 0..1 MS and   // "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
        9N737000000000012 0..1 MS       //　"検査結果情報エントリ 肺がん検診時の喫煙指数"

  * entry[9P500000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P500000000000011)
    * ^short = "問診結果セクションに含まれる 肺がん検診の過去の受診歴 をあらわすObservationリソースへの参照。"
  * entry[9P501000000000011] only Reference(JP_Observation_eMunicipalCheckup_9P501000000000011)
    * ^short = "問診結果セクションに含まれる 肺がん検診時の肺がんに係る症状の有無 をあらわすObservationリソースへの参照。"
  * entry[9N737000000000012] only Reference(JP_Observation_eMunicipalCheckup_9N737000000000012)
    * ^short = "問診結果セクションに含まれる 肺がん検診時の喫煙指数 をあらわすObservationリソースへの参照。"


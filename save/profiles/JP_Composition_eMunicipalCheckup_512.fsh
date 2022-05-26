Profile:        JP_Composition_eMunicipalCheckup_512
Parent:         JP_Composition_eMunicipalCheckup_510
Id:             JP-Composition-eMunicipalCheckup-512
//Title:          "自治体検診結果報告書　Compositionリソース　文書構成情報"
Description:    "自治体検診結果報告書　Compositionリソース　文書構成情報(肺がん精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup_512"
* ^status = #draft

* event.code.coding = $checkup_type_cs#2 (exactly)

//検査結果セクション
* section[OBSERVATION]
  //  * entry contains OBS 1..* MS and COV 0..2 MS
  * entry[Group_9P500] 0..0         // "検査結果情報エントリ 胸部エックス線検査"
  * entry[9P502000000000011] 0..0       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査判定"
  * entry[9P503160800000049] 0..0       // "検査結果情報エントリ 肺がん検診の胸部エックス線検査所見"
  * entry[Group_7A030] 0..0         // "検査結果情報エントリ 喀痰検査"
  * entry[7A030161506144349] 0..0       // "検査結果情報エントリ 肺がん検診の喀痰検査受診日"
  * entry[7A030000006144311] 0..0       // "検査結果情報エントリ 肺がん検診の喀痰検査判定"
  * entry[7A030160806144349] 0..0       // "検査結果情報エントリ 肺がん検診の喀痰検査所見"
  * entry[9P504000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
  * entry[9P505160800000049] 0..0  // "検査結果情報エントリ 肺がん検診のその他所見"
  * entry[9P506000000000011] 0..0  // "検査結果情報エントリ 肺がん検診による偶発症の有無"
  * entry[9P507000000000011] 1..1  // "検査結果情報エントリ 肺がん検診の精密検査結果"
  * entry[9P508160800000049] 0..0  // "検査結果情報エントリ 肺がん検診の精密検査その他所見"
  * entry[9P509000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の精密検査による偶発症の有無"

//問診結果セクション
* section[QUESTIONAIRRE]
  * entry[9P500000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の過去の受診歴"
  * entry[9P501000000000011] 0..0  // "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
  * entry[9N737000000000012] 0..0  //　"検査結果情報エントリ 肺がん検診時の喫煙指数"

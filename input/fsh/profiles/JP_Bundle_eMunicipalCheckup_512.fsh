Profile:        JP_Bundle_eMunicipalCheckup_512
Parent:         JP_Bundle_eMunicipalCheckup_510
Id:             JP-Bundle-eMunicipalCheckup-512
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(肺がん精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_512"
* ^status = #draft
/*
* meta 1..1 MS
//  * profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/eMunicipalCheckup-Bundle/1.0"
  * profile = $profile
    * ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"

* identifier 1..1 MS
  * system = "urn:ietf:rfc:3986"
    * ^short = "固定値。"
  * value 1..1
    * ^short = "Bundleリソースを一意に特定する識別子。本仕様では、Bundleに対して一意となるように生成されたUUIDを指定する。"
*/

* entry[composition]
  * resource only JP_Composition_eMunicipalCheckup_512
    * ^short = "文書構成情報(肺がん精密検査)"

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
* entry[9P500000000000011] 0..0  // "検査結果情報エントリ 肺がん検診の過去の受診歴"
* entry[9P501000000000011] 0..0  // "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
* entry[9N737000000000012] 0..0  //　"検査結果情報エントリ 肺がん検診時の喫煙指数"
* entry[documentReference] 0..0


Profile:        JP_Bundle_eMunicipalCheckup_513
Parent:         JP_Bundle_eMunicipalCheckup_510
Id:             JP-Bundle-eMunicipalCheckup-513
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(肺がん一次検診と精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_513"
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
  * resource only JP_Composition_eMunicipalCheckup_513
    * ^short = "文書構成情報(肺がん一次検診と精密検査)"

* entry[9P504000000000011]  1..1  // "検査結果情報エントリ 肺がん検診の精密検査対象有無"
* entry[9P507000000000011] 1..1  // "検査結果情報エントリ 肺がん検診の精密検査結果"


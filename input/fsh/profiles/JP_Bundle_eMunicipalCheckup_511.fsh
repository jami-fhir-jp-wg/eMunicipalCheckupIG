Profile:        JP_Bundle_eMunicipalCheckup_511
Parent:         Bundle
Id:             JP-Bundle-eMunicipalCheckup-511
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(肺がん一次検診)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_511"
* ^status = #draft

* meta 1..1 MS
//  * profile = "http://jpfhir.jp/fhir/eCheckup/StructureDefinition/eMunicipalCheckup-Bundle/1.0"
  * profile = $profile
    * ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"

* identifier 1..1 MS
  * system = "urn:ietf:rfc:3986"
    * ^short = "固定値。"
  * value 1..1
    * ^short = "Bundleリソースを一意に特定する識別子。本仕様では、Bundleに対して一意となるように生成されたUUIDを指定する。"

* type 1..1 MS
  * ^short = "Bundleリソースがドキュメントタイプであることを示す。"
* type = http://hl7.org/fhir/bundle-type#document (exactly)

* timestamp 1..1 MS
  * ^short = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。"

* entry ^slicing.discriminator.type = #profile
* entry ^slicing.discriminator.path = "resource"
* entry ^slicing.rules = #closed
* entry contains
    composition 1..1 MS and
    patient 1..1 MS and
    practitionerRole 1..1 MS and
    organizationProvider 1..1 MS and 
    practitioner 1..1 MS and
    encounter 1..1 MS and
//    coverage 1..1 MS and
    coverage 0..1 MS and
    organizationInsurer 0..1 MS and
    Group_9P500 0..1 MS and
    9P502000000000011 0..1 MS and
    9P503160800000049 0..1 MS and
    Group_7A030 0..1 MS and
    7A030161506144349 0..1 MS and
    7A030000006144311 0..1 MS and
    7A030160806144349 0..1 MS and
    9P504000000000011 1..1 MS and
    9P505160800000049 0..1 MS and
    9P506000000000011 0..1 MS and
    9P500000000000011 0..1 MS and
    9P501000000000011 0..1 MS and
    9N737000000000012 0..1 MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS

* entry[composition]
  * ^short = "構成リソース一覧目次に相当。"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Composition_eMunicipalCheckup_511
    * ^short = "文書構成情報(肺がん一次検診)"

* entry[patient]
  * ^short = "受診者情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Patient_eMunicipalCheckup
    * ^short = "受診者情報"

* entry[practitionerRole]
  * ^short = "検診結果作成者役割情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_PractitionerRole_eMunicipalCheckup
    * ^short = "検診結果作成者役割情報"

* entry[organizationProvider]
  * ^short = "検診結果作成組織情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Organization_eMunicipalCheckup_Provider
    * ^short = "検診結果作成組織情報"

* entry[practitioner]
  * ^short = "検診結果作成者情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Practitioner_eMunicipalCheckup
    * ^short = "検診結果作成者情報"

* entry[encounter]
  * ^short = "検診実施情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Encounter_eMunicipalCheckup
    * ^short = "検診実施情報"

* entry[coverage]
  * ^short = "保険情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Coverage_eMunicipalCheckup
    * ^short = "保険・自費情報"

* entry[organizationInsurer]
  * ^short = "保険者情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Organization_eMunicipalCheckup_Insurer
    * ^short = "保険者情報"


* entry[Group_9P500]
  * ^short = "検査結果情報エントリ 胸部エックス線検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_9P500
    * ^short = "健診項目情報 胸部エックス線検査"

* entry[9P502000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の胸部エックス線検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P502000000000011
    * ^short = "健診項目情報 肺がん検診の胸部エックス線検査判定"

* entry[9P503160800000049]
  * ^short = "検査結果情報エントリ 肺がん検診の胸部エックス線検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P503160800000049
    * ^short = "健診項目情報 肺がん検診の胸部エックス線検査所見"

* entry[Group_7A030]
  * ^short = "検査結果情報エントリ 喀痰検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_7A030
    * ^short = "健診項目情報 喀痰検査"

* entry[7A030161506144349]
  * ^short = "検査結果情報エントリ 肺がん検診の喀痰検査受診日"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_7A030161506144349
    * ^short = "健診項目情報 肺がん検診の喀痰検査受診日"

* entry[7A030000006144311]
  * ^short = "検査結果情報エントリ 肺がん検診の喀痰検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_7A030000006144311
    * ^short = "健診項目情報 肺がん検診の喀痰検査判定"

* entry[7A030160806144349]
  * ^short = "検査結果情報エントリ 肺がん検診の喀痰検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_7A030160806144349
    * ^short = "健診項目情報 肺がん検診の喀痰検査所見"

* entry[9P504000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の精密検査対象有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P504000000000011
    * ^short = "健診項目情報 肺がん検診の精密検査対象有無"

* entry[9P505160800000049]
  * ^short = "検査結果情報エントリ 肺がん検診のその他所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P505160800000049
    * ^short = "健診項目情報 肺がん検診のその他所見"

* entry[9P506000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診による偶発症の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P506000000000011
    * ^short = "健診項目情報 肺がん検診による偶発症の有無"

* entry[9P500000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診の過去の受診歴"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P500000000000011
    * ^short = "健診項目情報 肺がん検診の過去の受診歴"

* entry[9P501000000000011]
  * ^short = "検査結果情報エントリ 肺がん検診時の肺がんに係る症状の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P501000000000011
    * ^short = "健診項目情報 肺がん検診時の肺がんに係る症状の有無"

* entry[9N737000000000012]
  * ^short = "検査結果情報エントリ 肺がん検診時の喫煙指数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9N737000000000012
    * ^short = "健診項目情報 肺がん検診時の喫煙指数"


* entry[specimen]
  * ^short = "検体情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Specimen_eMunicipalCheckup
    * ^short = "検体情報"

* entry[diagnosticReport]
  * ^short = "健診結果画像報告書エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_DiagnosticReport_eMunicipalCheckup
    * ^short = "健診結果画像報告書情報"

* entry[media]
  * ^short = "健診結果画像情報エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Media_eMunicipalCheckup
    * ^short = "健診結果画像情報"

* entry[documentReference]
  * ^short = "添付文書エントリ"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_DocumentReference_eMunicipalCheckup
    * ^short = "添付文書情報"
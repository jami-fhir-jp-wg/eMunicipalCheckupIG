Profile: JP_Bundle_CUPIX
Parent: Bundle
Id: JP-Bundle-CUPIX
Description: "健診・検診結果報告書　Bundleリソース共通定義"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Bundle-CUPIX"

* ^status = #draft

* meta 1..1 MS
  * profile 1..1 MS
    * ^short = "本文書のプロファイルを識別するURLを指定する。値は例示である。今後決定されるURLを指定すること。"

// TODO: 健診結果報告書仕様にはこの定義はない。追加することを提案すべきか。
/*
* identifier 1..1 MS
  * system = "urn:ietf:rfc:3986"
    * ^short = "固定値。"
  * value 1..1
    * ^short = "Bundleリソースを一意に特定する識別子。本仕様では、Bundleに対して一意となるように生成されたUUIDを指定する。"
*/

* type 1..1 MS
  * ^short = "Bundleリソースがドキュメントタイプであることを示す。"
* type = http://hl7.org/fhir/bundle-type#document (exactly)

* timestamp 1..1 MS
  * ^short = "このリソースを生成した日時。時刻の精度はミリ秒とし、タイムゾーンを含めること。"

// 備考: 健診結果報告書では必ずしも必須にしていないので、CUPIXを導入するプロファイルの方で、必須のものについては制約を加える形になる。
* entry 
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * ^slicing.discriminator.type = #profile
  * ^slicing.discriminator.path = "resource"
  * ^slicing.rules = #open
* entry contains
    composition 1..1 MS and 
    patient 1..1 MS and
    practitionerRole 1..1 MS and
    organizationProvider 1..1 MS and
    practitioner 1..1 MS and
    encounter 1..1 MS and
    coverage 0..1 MS and
    organizationInsurer 0..1 MS and
    observationGroup 0..* MS and
    observation 0..* MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS

* entry[composition]
  * resource only JP_Composition_CUPIX

* entry[patient]
  * ^short = "受診者情報エントリ"
  * resource only JP_Patient_CUPIX
    * ^short = "受診者情報"

* entry[practitionerRole]
  * ^short = "検診結果作成者役割情報エントリ"
  * resource only JP_PractitionerRole_CUPIX
    * ^short = "検診結果作成者役割情報"

* entry[organizationProvider]
  * ^short = "検診結果作成組織情報エントリ"
  * resource only JP_Organization_Provider_CUPIX
    * ^short = "検診結果作成組織情報"

* entry[practitioner]
  * ^short = "検診結果作成者情報エントリ"
  * resource only JP_Practitioner_CUPIX
    * ^short = "検診結果作成者情報"

* entry[encounter]
  * ^short = "検診実施情報エントリ"
  * resource only JP_Encounter_CUPIX
    * ^short = "検診実施情報"

* entry[coverage]
  * ^short = "保険情報エントリ"
  * resource only JP_Coverage_CUPIX
    * ^short = "保険・自費情報"

* entry[organizationInsurer]
  * ^short = "保険者情報エントリ"
  * resource only JP_Organization_Insurer_CUPIX
    * ^short = "保険者情報"

* entry[observationGroup]
  * ^short = "健診項目グループ情報エントリ"
  * resource only JP_Observation_Group_CUPIX
    * ^short = "健診項目グループ情報"

* entry[observation]
  * ^short = "健診項目情報エントリ"
  * resource only JP_Observation_CUPIX
    * ^short = "健診項目情報"

* entry[specimen]
  * ^short = "検体情報エントリ"
  * resource only JP_Specimen_CUPIX
    * ^short = "検体情報"

* entry[diagnosticReport]
  * ^short = "健診結果画像報告書エントリ"
  * resource only JP_DiagnosticReport_CUPIX
    * ^short = "健診結果画像報告書情報"

* entry[media]
  * ^short = "健診結果画像情報エントリ"
  * resource only JP_Media_CUPIX
    * ^short = "健診結果画像情報"

* entry[documentReference]
  * ^short = "添付文書エントリ"
  * resource only JP_DocumentReference_CUPIX
    * ^short = "添付文書情報"

Profile:        JP_Bundle_eMunicipalCheckup_561
Parent:         Bundle
Id:             JP-Bundle-eMunicipalCheckup-561
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(肝炎ウイルス一次)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_561"
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
    9P615000000000011 1..1 MS and
    9N401000000000011 1..1 MS and
    9P600000000000011 0..1 MS and
    9P602000000000011 0..1 MS and
    9P604000000000011 0..1 MS and
    9P606000000000011 0..1 MS and
    9P607000000000011 0..1 MS and
    9P609000000000011 0..1 MS and
    9P611000000000011 0..1 MS and
    9P613000000000011 0..1 MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS

* entry[composition]
  * ^short = "構成リソース一覧目次に相当。"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Composition_eMunicipalCheckup_561
    * ^short = "文書構成情報(肝炎ウイルス一次)"

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


* entry[9P615000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診のB型肝炎ウイルス検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P615000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診のB型肝炎ウイルス検査判定"

* entry[9N401000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診のC型肝炎ウイルス検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9N401000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診のC型肝炎ウイルス検査判定"

* entry[9P600000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：肝臓病歴、肝機能が悪いと言われた経験の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P600000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：肝臓病歴、肝機能が悪いと言われた経験の有無"

* entry[9P602000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：広範な外科的処置歴の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P602000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：広範な外科的処置歴の有無"

* entry[9P604000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：妊娠・分娩時の多量出血歴の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P604000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：妊娠・分娩時の多量出血歴の有無"

* entry[9P606000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：定期的な肝機能検査受診の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P606000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：定期的な肝機能検査受診の有無"

* entry[9P607000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：B型肝炎ウイルス検査の受診歴の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P607000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：B型肝炎ウイルス検査の受診歴の有無"

* entry[9P609000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：B型肝炎治療歴の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P609000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：B型肝炎治療歴の有無"

* entry[9P611000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：C型肝炎ウイルス検査の受診歴の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P611000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：C型肝炎ウイルス検査の受診歴の有無"

* entry[9P613000000000011]
  * ^short = "検査結果情報エントリ 肝炎ウイルス検診時の問診：C型肝炎治療歴の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P613000000000011
    * ^short = "健診項目情報 肝炎ウイルス検診時の問診：C型肝炎治療歴の有無"


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

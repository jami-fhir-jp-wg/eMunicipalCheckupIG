Profile:        JP_Bundle_eMunicipalCheckup_573
Parent:         Bundle
Id:             JP-Bundle-eMunicipalCheckup-573
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(骨粗鬆症検診一次と精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_573"
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
    Group_9Z507 0..1 MS and
    9Z507195600000001 1..1 MS and
    9Z507195700000001 0..1 MS and
    9Z507195800000049 0..1 MS and
    9Z507195900000049 0..1 MS and
    9Z507000000000011 1..1 MS and
    9Z507160800000049 0..1 MS and
    Group_9Z531 0..1 MS and
    9Z531195600000001 1..1 MS and
    9Z531195700000001 0..1 MS and
    9Z531195800000049 0..1 MS and
    9Z531195900000049 0..1 MS and
    9Z531000000000011 1..1 MS and
    9Z531160800000049 0..1 MS and
    Group_9Z536 0..1 MS and
    9Z536195600000001 1..1 MS and
    9Z536195700000001 0..1 MS and
    9Z536195800000049 0..1 MS and
    9Z536195900000049 0..1 MS and
    9Z536000000000011 1..1 MS and
    9Z536160800000049 0..1 MS and
    Group_9Z541 0..1 MS and
    9Z541195600000001 1..1 MS and
    9Z541195700000001 0..1 MS and
    9Z541195800000049 0..1 MS and
    9Z541195900000049 0..1 MS and
    9Z541000000000011 1..1 MS and
    9Z541160800000049 0..1 MS and
    9P637000000000011 1..1 MS and
    9P638000000000011 1..1 MS and
    9P639160800000049 0..1 MS and
    9P620000000000011 0..1 MS and
    9P621000000000011 0..1 MS and
    9N006000000000001 0..1 MS and
    9N001000000000001 0..1 MS and
    9P622000000000011 0..1 MS and
    9P623160800000049 0..1 MS and
    9P624000000000011 0..1 MS and
    9P625000000000011 0..1 MS and
    9P626000000000001 0..1 MS and
    9P627000000000011 0..1 MS and
    9P628000000000011 0..1 MS and
    9P629160800000049 0..1 MS and
    9P630000000000011 0..1 MS and
    9P631000000000011 0..1 MS and
    9P632000000000011 0..1 MS and
    9P633000000000001 0..1 MS and
    9P634160800000049 0..1 MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS

* entry[composition]
  * ^short = "構成リソース一覧目次に相当。"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Composition_eMunicipalCheckup_573
    * ^short = "文書構成情報(骨粗鬆症検診一次と精密検査)"

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


* entry[Group_9Z507]
  * ^short = "検査結果情報エントリ 骨粗鬆症DXA 検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_9Z507
    * ^short = "健診項目情報 骨粗鬆症DXA 検査"

* entry[9Z507195600000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のDXA検査骨量値"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z507195600000001
    * ^short = "健診項目情報 骨粗鬆症検診のDXA検査骨量値"

* entry[9Z507195700000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のDXA検査骨密度"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z507195700000001
    * ^short = "健診項目情報 骨粗鬆症検診のDXA検査骨密度"

* entry[9Z507195800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のDXA検査測定部位"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z507195800000049
    * ^short = "健診項目情報 骨粗鬆症検診のDXA検査測定部位"

* entry[9Z507195900000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のDXA検査に使用した機器"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z507195900000049
    * ^short = "健診項目情報 骨粗鬆症検診のDXA検査に使用した機器"

* entry[9Z507000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のDXA検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z507000000000011
    * ^short = "健診項目情報 骨粗鬆症検診のDXA検査判定"

* entry[9Z507160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のDXA検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z507160800000049
    * ^short = "健診項目情報 骨粗鬆症検診のDXA検査所見"

* entry[Group_9Z531]
  * ^short = "検査結果情報エントリ 骨粗鬆症エックス線検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_9Z531
    * ^short = "健診項目情報 骨粗鬆症エックス線検査"

* entry[9Z531195600000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のエックス線検査骨量値"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z531195600000001
    * ^short = "健診項目情報 骨粗鬆症検診のエックス線検査骨量値"

* entry[9Z531195700000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のエックス線検査骨密度"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z531195700000001
    * ^short = "健診項目情報 骨粗鬆症検診のエックス線検査骨密度"

* entry[9Z531195800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のエックス線検査測定部位"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z531195800000049
    * ^short = "健診項目情報 骨粗鬆症検診のエックス線検査測定部位"

* entry[9Z531195900000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のエックス線検査に使用した機器"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z531195900000049
    * ^short = "健診項目情報 骨粗鬆症検診のエックス線検査に使用した機器"

* entry[9Z531000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のエックス線検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z531000000000011
    * ^short = "健診項目情報 骨粗鬆症検診のエックス線検査判定"

* entry[9Z531160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のエックス線検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z531160800000049
    * ^short = "健診項目情報 骨粗鬆症検診のエックス線検査所見"

* entry[Group_9Z536]
  * ^short = "検査結果情報エントリ 骨粗鬆症CT 検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_9Z536
    * ^short = "健診項目情報 骨粗鬆症CT 検査"

* entry[9Z536195600000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のCT検査骨量値"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z536195600000001
    * ^short = "健診項目情報 骨粗鬆症検診のCT検査骨量値"

* entry[9Z536195700000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のCT検査骨密度"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z536195700000001
    * ^short = "健診項目情報 骨粗鬆症検診のCT検査骨密度"

* entry[9Z536195800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のCT検査測定部位"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z536195800000049
    * ^short = "健診項目情報 骨粗鬆症検診のCT検査測定部位"

* entry[9Z536195900000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のCT検査に使用した機器"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z536195900000049
    * ^short = "健診項目情報 骨粗鬆症検診のCT検査に使用した機器"

* entry[9Z536000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のCT検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z536000000000011
    * ^short = "健診項目情報 骨粗鬆症検診のCT検査判定"

* entry[9Z536160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診のCT検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z536160800000049
    * ^short = "健診項目情報 骨粗鬆症検診のCT検査所見"

* entry[Group_9Z541]
  * ^short = "検査結果情報エントリ 骨粗鬆症超音波検査"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_Group_9Z541
    * ^short = "健診項目情報 骨粗鬆症超音波検査"

* entry[9Z541195600000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の超音波検査骨量値"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z541195600000001
    * ^short = "健診項目情報 骨粗鬆症検診の超音波検査骨量値"

* entry[9Z541195700000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の超音波検査の結果"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z541195700000001
    * ^short = "健診項目情報 骨粗鬆症検診の超音波検査の結果"

* entry[9Z541195800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の超音波検査測定部位"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z541195800000049
    * ^short = "健診項目情報 骨粗鬆症検診の超音波検査測定部位"

* entry[9Z541195900000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の超音波検査に使用した機器"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z541195900000049
    * ^short = "健診項目情報 骨粗鬆症検診の超音波検査に使用した機器"

* entry[9Z541000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の超音波検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z541000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の超音波検査判定"

* entry[9Z541160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の超音波検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9Z541160800000049
    * ^short = "健診項目情報 骨粗鬆症検診の超音波検査所見"

* entry[9P637000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P637000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の判定"

* entry[9P638000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の精密検査結果"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P638000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の精密検査結果"

* entry[9P639160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の精密検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P639160800000049
    * ^short = "健診項目情報 骨粗鬆症検診の精密検査所見"

* entry[9P620000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：過去の検査判定"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P620000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：過去の検査判定"

* entry[9P621000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：過去の精密検査の対象有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P621000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：過去の精密検査の対象有無"

* entry[9N006000000000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：現在の体重"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9N006000000000001
    * ^short = "健診項目情報 骨粗鬆症検診の問診：現在の体重"

* entry[9N001000000000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：現在の身長"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9N001000000000001
    * ^short = "健診項目情報 骨粗鬆症検診の問診：現在の身長"

* entry[9P622000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：骨折の既往歴"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P622000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：骨折の既往歴"

* entry[9P623160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：過去の骨折の部位"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P623160800000049
    * ^short = "健診項目情報 骨粗鬆症検診の問診：過去の骨折の部位"

* entry[9P624000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：大腿骨近位部骨折の家族歴"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P624000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：大腿骨近位部骨折の家族歴"

* entry[9P625000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：喫煙習慣"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P625000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：喫煙習慣"

* entry[9P626000000000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：飲酒量"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P626000000000001
    * ^short = "健診項目情報 骨粗鬆症検診の問診：飲酒量"

* entry[9P627000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：ステロイド内服"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P627000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：ステロイド内服"

* entry[9P628000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：関節リウマチ罹患"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P628000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：関節リウマチ罹患"

* entry[9P629160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：その他の既往歴"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P629160800000049
    * ^short = "健診項目情報 骨粗鬆症検診の問診：その他の既往歴"

* entry[9P630000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：活動量（運動頻度）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P630000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：活動量（運動頻度）"

* entry[9P631000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：月経の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P631000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：月経の有無"

* entry[9P632000000000011]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：閉経の理由"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P632000000000011
    * ^short = "健診項目情報 骨粗鬆症検診の問診：閉経の理由"

* entry[9P633000000000001]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：閉経年齢"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P633000000000001
    * ^short = "健診項目情報 骨粗鬆症検診の問診：閉経年齢"

* entry[9P634160800000049]
  * ^short = "検査結果情報エントリ 骨粗鬆症検診の問診：その他問診事項"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P634160800000049
    * ^short = "健診項目情報 骨粗鬆症検診の問診：その他問診事項"


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

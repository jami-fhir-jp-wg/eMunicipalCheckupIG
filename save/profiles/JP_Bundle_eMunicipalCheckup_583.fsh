Profile:        JP_Bundle_eMunicipalCheckup_583
Parent:         Bundle
Id:             JP-Bundle-eMunicipalCheckup-583
Description:    "自治体検診結果報告書　Bundleリソース　文書情報(歯周疾患一次検診と精密検査)"
* ^url = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Bundle_eMunicipalCheckup_583"
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
    9P690000000000011 1..1 MS and
    9P691000000000011 1..1 MS and
    9P692160800000049 1..1 MS and
    9P650000000000011 0..1 MS and
    9P651000000000011 0..1 MS and
    9P652000000000011 0..1 MS and
    9P653000000000011 0..1 MS and
    9P654000000000001 0..1 MS and
    9P655000000000001 0..1 MS and
    9P656000000000001 0..1 MS and
    9P657000000000011 0..1 MS and
    9P658000000000011 0..1 MS and
    9P659000000000011 0..1 MS and
    9P660000000000011 0..1 MS and
    9P661000000000011 0..1 MS and
    9P662160800000049 0..1 MS and
    9P663000000000001 1..1 MS and
    9P664000000000001 1..1 MS and
    9P665000000000001 1..1 MS and
    9P666000000000001 1..1 MS and
    9P667000000000001 1..1 MS and
    9P668000000000001 1..1 MS and
    9P669000000000001 1..1 MS and
    9P670000000000011 1..1 MS and
    9P671000000000011 1..1 MS and
    9P672000000000011 1..1 MS and
    9P673000000000011 1..1 MS and
    9P674000000000011 1..1 MS and
    9P675000000000011 1..1 MS and
    9P676000000000011 1..1 MS and
    9P677000000000011 1..1 MS and
    9P678000000000011 1..1 MS and
    9P679000000000011 1..1 MS and
    9P680000000000011 1..1 MS and
    9P681000000000011 1..1 MS and
    9P682000000000011 1..1 MS and
    9P683000000000011 1..1 MS and
    9P684000000000011 1..1 MS and
    9P685000000000011 1..1 MS and
    9P686000000000011 0..1 MS and
    9P687000000000011 0..1 MS and
    9P688000000000011 1..1 MS and
    9P689160800000049 0..1 MS and
    specimen 0..* MS and
    diagnosticReport 0..* MS and
    media 0..* MS and
    documentReference 0..* MS

* entry[composition]
  * ^short = "構成リソース一覧目次に相当。"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Composition_eMunicipalCheckup_583
    * ^short = "文書構成情報(歯周疾患一次検診と精密検査)"

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


* entry[9P690000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の判定区分"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P690000000000011
    * ^short = "健診項目情報 歯周疾患検診の判定区分"

* entry[9P691000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の精密検査結果"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P691000000000011
    * ^short = "健診項目情報 歯周疾患検診の精密検査結果"

* entry[9P692160800000049]
  * ^short = "検査結果情報エントリ 歯周疾患検診の精密検査所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P692160800000049
    * ^short = "健診項目情報 歯周疾患検診の精密検査所見"

* entry[9P650000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：１日での歯をみがく頻度"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P650000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：１日での歯をみがく頻度"

* entry[9P651000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：歯間ブラシやフロスの使用頻度"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P651000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：歯間ブラシやフロスの使用頻度"

* entry[9P652000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：過去１年間の歯科検診の受診の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P652000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：過去１年間の歯科検診の受診の有無"

* entry[9P653000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：喫煙歴"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P653000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：喫煙歴"

* entry[9P654000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：喫煙を開始した年齢"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P654000000000001
    * ^short = "健診項目情報 歯周疾患検診の問診：喫煙を開始した年齢"

* entry[9P655000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：喫煙を止めた年齢"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P655000000000001
    * ^short = "健診項目情報 歯周疾患検診の問診：喫煙を止めた年齢"

* entry[9P656000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：1日の平均喫煙本数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P656000000000001
    * ^short = "健診項目情報 歯周疾患検診の問診：1日の平均喫煙本数"

* entry[9P657000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：糖尿病罹患の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P657000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：糖尿病罹患の有無"

* entry[9P658000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：関節リウマチ罹患の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P658000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：関節リウマチ罹患の有無"

* entry[9P659000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：狭心症・心筋梗塞・脳梗塞罹患の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P659000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：狭心症・心筋梗塞・脳梗塞罹患の有無"

* entry[9P660000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：内蔵脂肪型肥満の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P660000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：内蔵脂肪型肥満の有無"

* entry[9P661000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：妊娠の有無"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P661000000000011
    * ^short = "健診項目情報 歯周疾患検診の問診：妊娠の有無"

* entry[9P662160800000049]
  * ^short = "検査結果情報エントリ 歯周疾患検診の問診：その他全身の状態"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P662160800000049
    * ^short = "健診項目情報 歯周疾患検診の問診：その他全身の状態"

* entry[9P663000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の健全歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P663000000000001
    * ^short = "健診項目情報 歯周疾患検診の健全歯数"

* entry[9P664000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の未処置歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P664000000000001
    * ^short = "健診項目情報 歯周疾患検診の未処置歯数"

* entry[9P665000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の処置歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P665000000000001
    * ^short = "健診項目情報 歯周疾患検診の処置歯数"

* entry[9P666000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の喪失歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P666000000000001
    * ^short = "健診項目情報 歯周疾患検診の喪失歯数"

* entry[9P667000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の要補綴歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P667000000000001
    * ^short = "健診項目情報 歯周疾患検診の要補綴歯数"

* entry[9P668000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の欠損補綴歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P668000000000001
    * ^short = "健診項目情報 歯周疾患検診の欠損補綴歯数"

* entry[9P669000000000001]
  * ^short = "検査結果情報エントリ 歯周疾患検診の現在歯数"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P669000000000001
    * ^short = "健診項目情報 歯周疾患検診の現在歯数"

* entry[9P670000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（１７または１６）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P670000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（１７または１６）"

* entry[9P671000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（１１）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P671000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（１１）"

* entry[9P672000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（２６または２７）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P672000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（２６または２７）"

* entry[9P673000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（４７または４６）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P673000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（４７または４６）"

* entry[9P674000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（３１）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P674000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（３１）"

* entry[9P675000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（３６または３７）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P675000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（３６または３７）"

* entry[9P676000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯肉出血ＢＯＰ（最大値）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P676000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯肉出血ＢＯＰ（最大値）"

* entry[9P677000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（１７または１６）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P677000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（１７または１６）"

* entry[9P678000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（１１）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P678000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（１１）"

* entry[9P679000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（２６または２７）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P679000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（２６または２７）"

* entry[9P680000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（４７または４６）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P680000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（４７または４６）"

* entry[9P681000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（３１）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P681000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（３１）"

* entry[9P682000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（３６または３７）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P682000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（３６または３７）"

* entry[9P683000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯周ポケットＰＤ（最大値）"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P683000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯周ポケットＰＤ（最大値）"

* entry[9P684000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯石の付着"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P684000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯石の付着"

* entry[9P685000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の口腔清掃状態"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P685000000000011
    * ^short = "健診項目情報 歯周疾患検診の口腔清掃状態"

* entry[9P686000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の歯列咬合所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P686000000000011
    * ^short = "健診項目情報 歯周疾患検診の歯列咬合所見"

* entry[9P687000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の顎関節所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P687000000000011
    * ^short = "健診項目情報 歯周疾患検診の顎関節所見"

* entry[9P688000000000011]
  * ^short = "検査結果情報エントリ 歯周疾患検診の粘膜所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P688000000000011
    * ^short = "健診項目情報 歯周疾患検診の粘膜所見"

* entry[9P689160800000049]
  * ^short = "検査結果情報エントリ 歯周疾患検診のその他所見"
  * fullUrl 1..1 MS
    * ^short = "エントリリスト内のリソースを一意に識別するためのUUID。"
  * resource 1..1 MS
  * resource only JP_Observation_eMunicipalCheckup_9P689160800000049
    * ^short = "健診項目情報 歯周疾患検診のその他所見"


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

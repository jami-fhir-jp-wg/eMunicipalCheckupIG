Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-1
//InstanceOf: JP_Composition_eMunicipalCheckup_513
InstanceOf: JP_Composition_eMunicipalCheckup
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup"
//* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Composition_eMunicipalCheckup_513"
* language = #ja
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"ja\" xml:lang=\"ja\"><p>自治体検診結果報告書</p></div>"
* identifier.system = "urn:oid:1.2.392.100495.100.1.11311234567"
* identifier.value = "12345"
* status = #final
* type = $doctype_codes_cs#xx "自治体検診結果報告書"
* category = $report_category_cs#51 "肺がん検診"
//* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* subject = Reference(Inline-Instance-for-GOFSH-GENERATED-ID-21-2)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author[0] = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* author[1] = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* title = "肺がん検診結果のお知らせ"
* confidentiality = #N
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_type_cs#3 "一次検診と精密検査"
* event.period.start = "2021-10-01"
* event.period.end = "2021-10-01"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
//* section[0].title = "検査結果セクション"
* section[0].title = "検査結果"
* section[=].code = $section_code_cs#01910 "検査結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の胸部エックス線検査判定 Ｅ（肺癌の疑い）</li><li>肺がん検診の胸部エックス線検査所見 要精密検査</li><li>肺がん検診の喀痰検査受診日 2020-10-01</li><li>肺がん検診の喀痰検査判定 Ｄ（高度（境界）異型扁平上皮細胞または悪性腫瘍が疑われる細胞を認める）</li><li>肺がん検診の精密検査対象有無 要精密検査（肺がん疑い）</li><li>肺がん検診のその他所見 特記事項無し</li><li>肺がん検診による偶発症の有無 なし</li><li>肺がん検診の精密検査結果 肺がんの疑いのある者又は未確定</li><li>肺がん検診の精密検査その他所見 肺がんの疑いのある者</li><li>肺がん検診の精密検査による偶発症の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:b41c8c97-f3ad-450a-1738-5f2b4c40c68a)
* section[=].entry[+] = Reference(urn:uuid:cde1fec2-f8af-a793-7fe0-c2c417c9c000)
* section[=].entry[+] = Reference(urn:uuid:51424f15-c213-00bf-5d31-4770244b4f32)
* section[=].entry[+] = Reference(urn:uuid:628244db-68cf-abb6-bc9d-2d89bbc2b3ea)
* section[=].entry[+] = Reference(urn:uuid:ff4472f4-9e44-6aa3-bcd6-abb0662e4641)
* section[=].entry[+] = Reference(urn:uuid:38cbf2cf-61b7-6738-9d8c-a7b29016c48f)
* section[=].entry[+] = Reference(urn:uuid:01b972fc-5183-8fa4-0954-10a7c5f5a36e)
* section[=].entry[+] = Reference(urn:uuid:13e56540-0e37-96f8-c774-31d66fb3efa8)
* section[=].entry[+] = Reference(urn:uuid:881e7ffa-4b36-01de-f954-9eff7a7eba24)
* section[=].entry[+] = Reference(urn:uuid:55cb9c64-af3d-9763-a3f5-8d14954c36cc)
* section[=].entry[+] = Reference(urn:uuid:42b66f41-aafe-1452-1f3d-8fc25dfa1ce3)
* section[=].entry[+] = Reference(urn:uuid:54eabf03-1de5-d080-aed6-6b6a2e4da269)
* section[=].entry[+] = Reference(urn:uuid:029b7c8b-a683-6189-4b28-69eac44785df)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の過去の受診歴 前年度受けた</li><li>肺がん検診時の肺がんに係る症状の有無 なし</li><li>肺がん検診時の喫煙指数 150</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:ddd1124f-f22d-73d9-0205-f23d19ff9d5b)
* section[=].entry[+] = Reference(urn:uuid:58da6db5-8b94-885e-d69d-2c1d61bcf5fc)
* section[=].entry[+] = Reference(urn:uuid:c129aa0a-0324-f741-b3b6-2ede35eef2de)
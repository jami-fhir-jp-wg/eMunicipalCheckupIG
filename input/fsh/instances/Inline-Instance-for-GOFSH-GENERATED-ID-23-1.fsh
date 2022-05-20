Instance: Inline-Instance-for-GOFSH-GENERATED-ID-23-1
InstanceOf: Composition
Usage: #inline
* language = #ja
* extension.url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* extension.valueString = "1.0"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\" lang=\"ja\" xml:lang=\"ja\"><p>自治体検診結果報告書</p></div>"
* identifier.system = "urn:oid:1.2.392.100495.100.1.11311234567"
* identifier.value = "12345"
* status = #final
* type = $doctype_codes_cs#xx "自治体検診結果報告書"
* category = $report_category_cs#52 "乳がん検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "乳がん検診結果のお知らせ"
* confidentiality = #N
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_type_cs#3 "一次検診と精密検査"
* event.period.start = "2021-09-10"
* event.period.end = "2021-09-10"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
//* section[0].title = "検査結果セクション"
* section[0].title = "検査結果"
* section[=].code = $section_code_cs#01910 "検査結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>乳がん検診のマンモグラフィー検査判定 カテゴリー３（良性、しかし悪性を否定できず）</li><li>乳がん検診の精密検査対象有無 要精密検査（乳がん疑い）</li><li>乳がん検診のその他所見 特記事項無し</li><li>乳がん検診による偶発症の有無 なし</li><li>乳がん検診の精密検査結果 乳がんの疑いのある者又は未確定</li><li>乳がん検診の精密検査その他所見 乳がんの疑いのある者</li><li>乳がん検診の精密検査による偶発症の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:d7d7e3a9-db77-0ca9-369b-ad5e37cbc861)
* section[=].entry[+] = Reference(urn:uuid:94e04fcb-e457-529c-51b9-23c2548ddd38)
* section[=].entry[+] = Reference(urn:uuid:1af219c4-f184-77b2-0030-85c272712ab8)
* section[=].entry[+] = Reference(urn:uuid:c4f067d2-5bc8-17d6-be2e-968f43cc0676)
* section[=].entry[+] = Reference(urn:uuid:44f915b9-086e-61e8-daf7-719e55f8ef09)
* section[=].entry[+] = Reference(urn:uuid:1e00b27f-4d71-d2a6-a902-8386ce9e177f)
* section[=].entry[+] = Reference(urn:uuid:18af516e-8c23-89cf-8e68-be9df9045c4f)
* section[=].entry[+] = Reference(urn:uuid:cf2073cd-7554-2e23-78a0-d946cb84217a)
* section[=].entry[+] = Reference(urn:uuid:a00ef5d8-78c7-05a6-b8b7-67f005eaf812)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>乳がん検診の過去の受診歴 前々年度受けた</li><li>乳がん検診時の乳がんに係る症状の有無 いいえ</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:13bdd957-5eda-6faf-b0f6-f77dca3ba877)
* section[=].entry[+] = Reference(urn:uuid:f77ba419-2ab3-82ca-20e4-bca9c9d88e72)
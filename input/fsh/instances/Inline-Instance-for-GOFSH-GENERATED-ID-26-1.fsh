Instance: Inline-Instance-for-GOFSH-GENERATED-ID-26-1
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
* category = $report_category_cs#54 "子宮頸がん検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "子宮頸がん検診結果のお知らせ"
* confidentiality = #N
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_type_cs#1 "一次検診"
* event.period.start = "2021-09-10"
* event.period.end = "2021-09-10"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
//* section[0].title = "検査結果セクション"
* section[0].title = "検査結果"
* section[=].code = $section_code_cs#01910 "検査結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>子宮頸がん検診の視診所見有無 所見あり</li><li>子宮頸がん検診の視診所見内容 異状所見あり</li><li>子宮頸がん検診の内診所見有無 所見なし</li><li>子宮頸がん検診の頸部細胞診検査判定 NILM（陰性）</li><li>子宮頸がん検診の頸部細胞診検査所見 異状を認めず</li><li>子宮頸がん検診の精密検査の対象有無 精密検査不要</li><li>子宮頸がん検診のその他所見 特記事項無し</li><li>子宮頚がん検診による偶発症の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:5fc539f6-a188-9020-d95f-3795eeaf88c4)
* section[=].entry[+] = Reference(urn:uuid:45e1ed92-8043-33ab-6292-cae8bd0c3c12)
* section[=].entry[+] = Reference(urn:uuid:78d30c64-f499-d4e8-72e1-474f308e9a35)
* section[=].entry[+] = Reference(urn:uuid:335a377b-d926-4a62-8b72-c129849ece4d)
* section[=].entry[+] = Reference(urn:uuid:59a485da-d8d0-f192-50f2-e1405c106ff7)
* section[=].entry[+] = Reference(urn:uuid:7b5036cf-2303-6eea-eb73-895d00bfb3e4)
* section[=].entry[+] = Reference(urn:uuid:2388f871-8a27-6094-9fcb-19eaa715c9a7)
* section[=].entry[+] = Reference(urn:uuid:a056274a-6f76-c093-a61a-6818f3449b89)
// Specimenは記載しない
//* section[=].entry[+] = Reference(urn:uuid:36e8ada9-1fdc-4a4f-2690-6600019372a4)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>子宮頸がん検診の過去の受診歴 前々年度に受けた</li><li>子宮頸がん検診時の子宮頸がんに係る症状の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:8434142b-99c2-2be7-1a4b-56193a846bda)
* section[=].entry[+] = Reference(urn:uuid:733b2ce1-1c22-b33f-07ad-c7659cb4237f)
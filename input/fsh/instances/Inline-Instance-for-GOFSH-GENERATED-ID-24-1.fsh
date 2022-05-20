Instance: Inline-Instance-for-GOFSH-GENERATED-ID-24-1
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
* category = $report_category_cs#53 "胃がん検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "胃がん検診結果のお知らせ"
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
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>胃がん検診の胃部エックス線検査検査判定 所見あり</li><li>胃がん検診の胃部エックス線検査所見 要精密検査</li><li>胃がん検診の精密検査の対象有無 要精密検査（胃がん疑い）</li><li>胃がん検診のその他所見 特記事項無し</li><li>胃がん検診による偶発症の有無 なし</li><li>胃がん検診の精密検査結果 「３：胃がんのうち早期がん」のうち粘膜内がん</li><li>胃がん検診の精密検査その他所見 胃がんの疑いのある者</li><li>胃がん検診の精密検査による偶発症の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:560d5a3c-aaa7-2233-64fe-2dfa23718fe4)
* section[=].entry[+] = Reference(urn:uuid:ac18d004-260f-6588-f16d-58ba6ca97768)
* section[=].entry[+] = Reference(urn:uuid:19ef10b0-9a3c-4249-0ad3-3618f6511286)
* section[=].entry[+] = Reference(urn:uuid:6f7f05cb-0982-bb4d-9ea2-7b52edf4255f)
* section[=].entry[+] = Reference(urn:uuid:1ccadb81-827b-3dd9-3e35-b5246a753ddd)
* section[=].entry[+] = Reference(urn:uuid:3422e2a5-709e-e201-bac7-3bf632e676e6)
* section[=].entry[+] = Reference(urn:uuid:bedf8cc2-9619-5351-5e6c-54d2dd4741ec)
* section[=].entry[+] = Reference(urn:uuid:e13635ba-2c39-3fc0-b155-7a8e7b604ea4)
* section[=].entry[+] = Reference(urn:uuid:23a92849-3fb2-92e8-2629-1e7d9a67e71d)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>胃がん検診の過去の受診歴 前年度に受けた</li><li>胃がん検診時の胃がんに係る症状の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:095e8ff3-0251-8d7f-eb64-42d71805b067)
* section[=].entry[+] = Reference(urn:uuid:961d6edd-c19b-9b29-e8c1-eed30a19f3ae)
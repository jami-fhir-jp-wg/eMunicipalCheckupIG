Instance: Inline-Instance-for-GOFSH-GENERATED-ID-27-1
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
* category = $report_category_cs#56 "肝炎検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "肝炎検診結果のお知らせ"
* confidentiality = #N
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_type_cs#1 "一次検診"
* event.period.start = "2021-10-01"
* event.period.end = "2021-10-01"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
//* section[0].title = "検査結果セクション"
* section[0].title = "検査結果"
* section[=].code = $section_code_cs#01910 "検査結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肝炎ウイルス検診のB型肝炎ウイルス検査判定 陰性</li><li>肝炎ウイルス検診のC型肝炎ウイルス検査判定 現在、Ｃ型肝炎ウイルスに感染している可能性が低い</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:6da14ba7-1190-bb39-3e39-2e1ae631a2f0)
* section[=].entry[+] = Reference(urn:uuid:17de2f36-894e-2f26-ca67-89de375986f5)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肝炎ウイルス検診時の問診：肝臓病歴、肝機能が悪いと言われた経験の有無 あり</li><li>肝炎ウイルス検診時の問診：肝臓病歴、肝機能が悪いと言われた時期 2018年</li><li>肝炎ウイルス検診時の問診：広範な外科的処置歴の有無 あり</li><li>肝炎ウイルス検診時の問診：広範な外科的処置時期 2015年</li><li>肝炎ウイルス検診時の問診：定期的な肝機能検査受診の有無 あり</li><li>肝炎ウイルス検診時の問診：B型肝炎ウイルス検査の受診歴の有無 なし</li><li>肝炎ウイルス検診時の問診：B型肝炎治療歴の有無 なし</li><li>肝炎ウイルス検診時の問診：C型肝炎ウイルス検査の受診歴の有無 なし</li><li>肝炎ウイルス検診時の問診：C型肝炎治療歴の有無 なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:f5994dbc-8168-e302-62b4-c1732b3bdcf7)
* section[=].entry[+] = Reference(urn:uuid:4c948d82-8e00-d147-0f7e-91c237b9577d)
* section[=].entry[+] = Reference(urn:uuid:246f468c-880f-e550-1a45-32f5e34371c5)
* section[=].entry[+] = Reference(urn:uuid:d0348bc0-8dd3-f868-8ccd-2ed4c4de188f)
* section[=].entry[+] = Reference(urn:uuid:15dd8304-b4dd-9720-d660-bd9134ab811f)
* section[=].entry[+] = Reference(urn:uuid:4eb2092c-ee28-59f9-a814-74e060e0752e)
* section[=].entry[+] = Reference(urn:uuid:b045f629-a519-1070-d28c-52c97211ce41)
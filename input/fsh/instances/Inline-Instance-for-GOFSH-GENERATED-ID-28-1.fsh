Instance: Inline-Instance-for-GOFSH-GENERATED-ID-28-1
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
* category = $report_category_cs#57 "骨粗鬆症検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "骨粗鬆症検診結果のお知らせ"
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
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>骨粗鬆症検診のDXA検査骨量値 80.4 %YAM</li><li>骨粗鬆症検診のDXA検査骨密度 0.991 g/cm2</li><li>骨粗鬆症検診のDXA検査測定部位 大腿骨</li><li>骨粗鬆症検診のDXA検査に使用した機器 Ａ社製 骨密度測定機</li><li>骨粗鬆症検診のDXA検査判定 異状を認めず</li><li>骨粗鬆症検診のDXA検査所見 所見なし</li><li>骨粗鬆症検診の判定 異状認めず</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:cc4dace4-ed9d-14af-d6cf-e71c63fe9b83)
//* section[=].entry[+] = Reference(urn:uuid:e9cc6622-3a53-07cb-d61b-311abc1899e7)
* section[=].entry[+] = Reference(urn:uuid:c82c230d-4ecb-b05f-fac6-6a4bcfdb46e3)
* section[=].entry[+] = Reference(urn:uuid:2fe72106-770d-c3e5-b73e-d6efd8617660)
* section[=].entry[+] = Reference(urn:uuid:c00c7364-c440-4399-c4a8-49593795df7e)
* section[=].entry[+] = Reference(urn:uuid:c6807bfb-9696-01f9-76e3-16bce415d9ef)
* section[=].entry[+] = Reference(urn:uuid:221d6096-c36e-7afb-a8d0-760138d939de)
* section[=].entry[+] = Reference(urn:uuid:5852a194-3a30-2fa4-55b1-7aa1745e96de)
* section[=].entry[+] = Reference(urn:uuid:fb7bdeae-fbce-d957-ba3c-3529f70b370f)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>骨粗鬆症検診の問診：過去の検査判定 なし</li><li>骨粗鬆症検診の問診：過去の精密検査の対象有無 わからない</li><li>骨粗鬆症検診の問診：現在の体重 75.5 kg</li><li>骨粗鬆症検診の問診：現在の身長 171.3 cm</li><li>骨粗鬆症検診の問診：骨折の既往歴 あり</li><li>骨粗鬆症検診の問診：過去の骨折の部位 左手首</li><li>骨粗鬆症検診の問診：大腿骨近位部骨折の家族歴 なし</li><li>骨粗鬆症検診の問診：喫煙習慣 喫煙したことはない</li><li>骨粗鬆症検診の問診：飲酒量 500 ml/日</li><li>骨粗鬆症検診の問診：ステロイド内服 内服したことはない</li><li>骨粗鬆症検診の問診：関節リウマチ罹患 なし</li><li>骨粗鬆症検診の問診：その他の既往歴 特記なし</li><li>骨粗鬆症検診の問診：活動量（運動頻度）週１回程度</li><li>骨粗鬆症検診の問診：その他問診事項 特記事項なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:47790019-6b4d-c902-9ad7-1d164ad07907)
* section[=].entry[+] = Reference(urn:uuid:ee82a1ec-27b0-9142-5add-08b50f232bdd)
* section[=].entry[+] = Reference(urn:uuid:1ada2e00-6286-32ca-d1ca-d32f6a39033e)
* section[=].entry[+] = Reference(urn:uuid:9f74317b-f2a6-eb62-3687-5e192be31fa1)
* section[=].entry[+] = Reference(urn:uuid:569d10ba-d9b4-1d50-7db6-c9e5b5cd1a82)
* section[=].entry[+] = Reference(urn:uuid:d5c48087-bb53-8853-3935-8674d3524f0d)
* section[=].entry[+] = Reference(urn:uuid:ce3d80c7-a3bd-6dea-d4d6-ff268ef663b9)
* section[=].entry[+] = Reference(urn:uuid:6f4c4cd0-d13b-460f-826c-ff6db5957922)
* section[=].entry[+] = Reference(urn:uuid:51beaead-477f-c8f9-e36f-5dc4a5c7698a)
* section[=].entry[+] = Reference(urn:uuid:85b78126-5d48-8193-9d85-29eb9091af61)
* section[=].entry[+] = Reference(urn:uuid:4d84788b-5c7e-9080-a092-d3fca575a7e7)
* section[=].entry[+] = Reference(urn:uuid:1faf44b2-fa8d-6b30-762e-b08de8113c07)
* section[=].entry[+] = Reference(urn:uuid:419e9d73-d8c4-16ea-1c51-7112352cf145)
* section[=].entry[+] = Reference(urn:uuid:e9cc6622-3a53-07cb-d61b-311abc1899e7)
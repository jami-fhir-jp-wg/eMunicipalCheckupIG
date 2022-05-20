Instance: Inline-Instance-for-GOFSH-GENERATED-ID-29-1
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
* category = $report_category_cs#58 "歯周疾患検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "歯周疾患検診結果のお知らせ"
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
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>歯周疾患検診の判定区分 異常認めず</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:eac6609a-9821-61f7-3eb9-b7db3d9f5cfc)
* section[=].entry[+] = Reference(urn:uuid:6b04bdb5-2748-71c6-18f8-d9c5387c15c9)
//* section[+].title = "問診セクション"
* section[+].title = "問診結果"
* section[=].code = $section_code_cs#01920 "問診結果セクション"
* section[=].text.status = #generated
* section[=].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>歯周疾患検診の問診：糖尿病罹患の有無 なし</li><li>歯周疾患検診の問診：関節リウマチ罹患の有無 なし</li><li>歯周疾患検診の問診：狭心症・心筋梗塞・脳梗塞罹患の有無 なし</li><li>歯周疾患検診の問診：内蔵脂肪型肥満の有無 なし</li><li>歯周疾患検診の問診：その他全身の状態 特記なし</li><li>歯周疾患検診の健全歯数 22 本</li><li>歯周疾患検診の未処置歯数 0 本</li><li>歯周疾患検診の処置歯数 5 本</li><li>歯周疾患検診の喪失歯数 1 本</li><li>歯周疾患検診の要補綴歯数 0 本</li><li>歯周疾患検診の欠損補綴歯数 1 本</li><li>歯周疾患検診の現在歯数 27 本</li><li>歯周疾患検診の歯肉出血ＢＯＰ（１７または１６）健全</li><li>歯周疾患検診の歯肉出血ＢＯＰ（１１）健全</li><li>歯周疾患検診の歯肉出血ＢＯＰ（２６または２７）出血あり</li><li>歯周疾患検診の歯肉出血ＢＯＰ（４７または４６）健全</li><li>歯周疾患検診の歯肉出血ＢＯＰ（３１）健全</li><li>歯周疾患検診の歯肉出血ＢＯＰ（３６または３７）健全</li><li>歯周疾患検診の歯肉出血ＢＯＰ（最大値）出血あり</li><li>歯周疾患検診の歯周ポケットＰＤ（１７または１６）健全</li><li>歯周疾患検診の歯周ポケットＰＤ（１１） 健全</li><li>歯周疾患検診の歯周ポケットＰＤ（２６または２７）浅いポケット</li><li>歯周疾患検診の歯周ポケットＰＤ（４７または４６）健全</li><li>歯周疾患検診の歯周ポケットＰＤ（３１）健全</li><li>歯周疾患検診の歯周ポケットＰＤ（３６または３７）健全</li><li>歯周疾患検診の歯周ポケットＰＤ（最大値）浅いポケット</li><li>歯周疾患検診の歯石の付着 軽度（点状）あり</li><li>歯周疾患検診の口腔清掃状態 普通</li><li>歯周疾患検診の歯列咬合所見 所見なし</li><li>歯周疾患検診の顎関節所見 所見なし</li><li>歯周疾患検診の粘膜所見 所見なし</li><li>歯周疾患検診のその他所見 所見なし</li></ul></div>"
* section[=].entry[0] = Reference(urn:uuid:06f42e47-770e-8262-8475-aab10adcb456)
* section[=].entry[+] = Reference(urn:uuid:6228d56a-6329-ef95-d179-0d4d94be334b)
* section[=].entry[+] = Reference(urn:uuid:b9875e81-7328-1816-521c-c107e2581352)
* section[=].entry[+] = Reference(urn:uuid:da89754c-2829-597d-f9df-97e3b2ac9db7)
* section[=].entry[+] = Reference(urn:uuid:eec7ef31-029f-9240-ff01-ff21a1adbd45)
* section[=].entry[+] = Reference(urn:uuid:6c3c9e67-257f-6f2f-772e-089189770b40)
* section[=].entry[+] = Reference(urn:uuid:295bda32-cb6c-9326-3650-ed7e72b0f159)
* section[=].entry[+] = Reference(urn:uuid:449083ef-3075-065d-97fa-ffe0a45ea06e)
* section[=].entry[+] = Reference(urn:uuid:6e9bfa56-30c6-8e8e-81aa-b7e532163d52)
* section[=].entry[+] = Reference(urn:uuid:a31bf2ea-cd2e-7405-531e-31b1dde82b2c)
* section[=].entry[+] = Reference(urn:uuid:85308dc7-3dee-4740-fb7c-9fe84ee34a05)
* section[=].entry[+] = Reference(urn:uuid:ce498758-d7a1-49db-73bc-89e5829e8c76)
* section[=].entry[+] = Reference(urn:uuid:232c7cb3-9591-b922-08a5-7f58898cb72e)
* section[=].entry[+] = Reference(urn:uuid:11d062e2-583c-41a5-a031-999b77054521)
* section[=].entry[+] = Reference(urn:uuid:caf02b00-60a6-44a2-edd0-647671412f5b)
* section[=].entry[+] = Reference(urn:uuid:7897b239-2d95-3b76-801c-f42533ba682d)
* section[=].entry[+] = Reference(urn:uuid:23c5cad3-24c7-55b2-5d57-34a72993855f)
* section[=].entry[+] = Reference(urn:uuid:d49bc27d-b610-b6ec-19c3-0410d68d0456)
* section[=].entry[+] = Reference(urn:uuid:7fff5db4-5bf3-be91-2efe-315a68edb8d4)
* section[=].entry[+] = Reference(urn:uuid:7c2e5579-e0fa-d515-7112-26bfd618343b)
* section[=].entry[+] = Reference(urn:uuid:2e0c45b0-bfcb-f3ba-241b-1702d77d8c3a)
* section[=].entry[+] = Reference(urn:uuid:0a78bc53-0c48-7816-45d7-696e9705ecd7)
* section[=].entry[+] = Reference(urn:uuid:e24e09dc-0123-febf-93f7-3d4c93a69b43)
* section[=].entry[+] = Reference(urn:uuid:72a68694-9a9f-02ea-7b20-7f0ff0f26a9e)
* section[=].entry[+] = Reference(urn:uuid:793f0cea-cb4f-5ccd-6192-75d44cfbf417)
* section[=].entry[+] = Reference(urn:uuid:9bdc338a-d3e9-d623-4db0-2e6e081a97c3)
* section[=].entry[+] = Reference(urn:uuid:56de6abf-5890-0696-ad8a-db06035a97c3)
* section[=].entry[+] = Reference(urn:uuid:f6f4f4d9-d541-eb03-f903-4cf597011e41)
* section[=].entry[+] = Reference(urn:uuid:f7ec8f0f-cff6-cffd-d6cb-e2494453cda8)
* section[=].entry[+] = Reference(urn:uuid:7d24ffb6-3d3d-8809-3b3b-936e691e961d)
* section[=].entry[+] = Reference(urn:uuid:8cc2ca9e-7741-9009-6a74-aaa9838797a3)
* section[=].entry[+] = Reference(urn:uuid:1d7ffe88-c8b4-1e1e-6d60-7c5beb669993)
* section[=].entry[+] = Reference(urn:uuid:4c9ebb85-219c-de84-16bb-eba076af35cc)
* section[=].entry[+] = Reference(urn:uuid:d104058e-b326-3dc0-5f14-5907a287df84)
* section[=].entry[+] = Reference(urn:uuid:e1953557-e5de-d2da-3eda-e9ab4badeb23)
* section[=].entry[+] = Reference(urn:uuid:141cf860-2aee-83bb-000f-815ff64b7d12)
Instance: Inline-Instance-for-GOFSH-GENERATED-ID-22-1
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
* category = $report_category_cs#51 "肺がん検診"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* encounter = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* date = "2021-10-21T12:12:21+09:00"
* author = Reference(urn:uuid:e5ea153d-fd94-adcc-fb27-df24f394d3fa)
* title = "肺がん検診結果のお知らせ"
* confidentiality = #N
* custodian = Reference(urn:uuid:d1fb6063-8f12-4c2c-922a-7b5e467c8407)
* event.code = $checkup_type_cs#3 "一次検診と精密検査"
* event.period.start = "2021-10-01"
* event.period.end = "2021-10-01"
* event.detail = Reference(urn:uuid:3af3232e-1579-d4f6-3578-aa1e799fdcad)
* section.title = "添付書類"
* section.code = $section_code_cs#01995 "添付書類セクション"
* section.text.status = #generated
* section.text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">添付書類：自治体検診検診情報ファイル</div>"
* section.entry = Reference(urn:uuid:d998b928-380e-0700-949b-3b092b3ca3ad)
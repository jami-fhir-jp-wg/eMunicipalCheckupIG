Instance: example09-2
InstanceOf: Observation
Usage: #example
Description: "検査項目２"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の喀痰検査判定 Ｄ（高度（境界）異型扁平上皮細胞または悪性腫瘍が疑われる細胞を認める）</li></ul></div>"
* status = #final
* category = $observation-category#laboratory
* code = $jlac10_cs#7A030000006144311 "肺がん検診の喀痰検査判定"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2101#3 "Ｄ（高度（境界）異型扁平上皮細胞または悪性腫瘍が疑われる細胞を認める）"
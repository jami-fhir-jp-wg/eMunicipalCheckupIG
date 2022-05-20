Instance: example10
InstanceOf: Observation
Usage: #example
Description: "例10 Observationリソース_健診項目_記述例　定性検査結果コード-1"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の胸部エックス線検査判定 Ｅ（肺癌の疑い）</li></ul></div>"
* status = #final
* category = $observation-category#imaging
* code = $jlac10_cs#9P502000000000011 "肺がん検診の胸部エックス線検査判定"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2100#4 "Ｅ（肺癌の疑い）"
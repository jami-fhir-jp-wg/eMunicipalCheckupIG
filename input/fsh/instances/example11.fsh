Instance: example11
InstanceOf: Observation
Usage: #example
Description: "例11 Observationリソース_健診項目_記述例　定性検査結果コード-2"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診のその他所見 特記事項無し</li></ul></div>"
* status = #final
* category = $observation-category#exam
* code = $jlac10_cs#9P505160800000049 "肺がん検診のその他所見"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueString = "特記事項無し"
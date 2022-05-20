Instance: example09-1
InstanceOf: Observation
Usage: #example
Description: "検査項目１"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の喀痰検査受診日 2020-10-01</li></ul></div>"
* status = #final
* category = $observation-category#laboratory
* code = $jlac10_cs#7A030161506144349 "肺がん検診の喀痰検査受診日"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueDateTime = "2021-10-01"
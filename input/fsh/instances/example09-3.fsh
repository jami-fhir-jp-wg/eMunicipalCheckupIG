Instance: example09-3
InstanceOf: Observation
Usage: #example
Description: "検査項目３"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>肺がん検診の喀痰検査所見 悪性腫瘍が疑われる細胞を認める</li></ul></div>"
* status = #final
* category = $observation-category#laboratory
* code = $jlac10_cs#7A030160806144349 "肺がん検診の喀痰検査所見"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueString = "悪性腫瘍が疑われる細胞を認める"
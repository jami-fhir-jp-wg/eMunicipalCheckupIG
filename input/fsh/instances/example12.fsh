Instance: example12
InstanceOf: Observation
Usage: #example
Description: "例12 Observationリソース_健診項目_未実施記述例"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\"><ul><li>大腸がん検診の便潜血検査判定：未実施</li></ul></div>"
* status = #cancelled
* category = $observation-category#laboratory
* code = $jlac10_cs#1B040000001599811 "大腸がん検診の便潜血検査判定"
* subject = Reference(urn:uuid:1af0a9a6-a91d-3aef-fc4e-069995b89c4f)
* dataAbsentReason = $data-absent-reason#not-performed
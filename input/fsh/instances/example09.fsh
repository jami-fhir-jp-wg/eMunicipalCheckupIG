Instance: example09
InstanceOf: Observation
Usage: #example
Description: "例9　Observationリソース_健診項目_記述例 一連検査グループ"
* text.status = #generated
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">喀痰検査</div>"
* status = #final
* category = $observation-category#laboratory
* code = $observationGroup_codes_cs#7A030 "喀痰検査"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* hasMember[0] = Reference(urn:uuid:ff4472f4-9e44-6aa3-bcd6-abb0662e4641)
* hasMember[+] = Reference(urn:uuid:38cbf2cf-61b7-6738-9d8c-a7b29016c48f)
* hasMember[+] = Reference(urn:uuid:01b972fc-5183-8fa4-0954-10a7c5f5a36e)
* specimen = Reference(urn:uuid:3a33a26e-3532-06a6-90a9-e0566342cd49)
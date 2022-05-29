Instance: Inline-Instance-for-GOFSH-GENERATED-ID-23-9
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#imaging
* code = $observationGroup_codes_cs#9N281 "マンモグラフィー検査"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* hasMember[0] = Reference(urn:uuid:94e04fcb-e457-529c-51b9-23c2548ddd38)
* hasMember[+] = Reference(urn:uuid:1af219c4-f184-77b2-0030-85c272712ab8)
Instance: Example-obs-ID-21-11
InstanceOf: JP_Observation_eMunicipalCheckup
Usage: #example
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"
* status = #final
* category = $observation-category#imaging
* code = $jlac10_cs#9P503160800000049 "肺がん検診の胸部エックス線検査所見"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueString = "要精密検査"
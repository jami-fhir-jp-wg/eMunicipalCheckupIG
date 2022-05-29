Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-16
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"
* status = #final
* category = $observation-category#exam
* code = $jlac10_cs#9P504000000000011 "肺がん検診の精密検査対象有無"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2140#2 "要精密検査（肺がん疑い）"
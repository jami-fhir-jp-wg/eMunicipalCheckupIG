Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-23
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#exam
* code = $jlac10_cs#9P501000000000011 "肺がん検診時の肺がんに係る症状の有無"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2052#2 "あり"
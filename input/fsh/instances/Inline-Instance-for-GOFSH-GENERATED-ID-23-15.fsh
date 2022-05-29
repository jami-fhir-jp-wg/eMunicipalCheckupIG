Instance: Inline-Instance-for-GOFSH-GENERATED-ID-23-15
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#exam
* code = $jlac10_cs#9P525000000000011 "乳がん検診の精密検査結果"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2250#5 "乳がんの疑いのある者又は未確定"
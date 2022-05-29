Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-21
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#exam
* code = $jlac10_cs#9P509000000000011 "肺がん検診の精密検査による偶発症の有無"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2011#1 "なし"
Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-20
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#exam
* code = $jlac10_cs#9P508160800000049 "肺がん検診の精密検査その他所見"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueString = "肺がんの疑いのある者"
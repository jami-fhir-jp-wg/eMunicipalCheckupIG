Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-24
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#social-history
* code = $jlac10_cs#9N737000000000012 "肺がん検診時の喫煙指数"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueInteger = 150
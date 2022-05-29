Instance: Inline-Instance-for-GOFSH-GENERATED-ID-23-11
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"

* status = #final
* category = $observation-category#imaging
* code = $jlac10_cs#9N281160800000049 "乳がん検診のマンモグラフィー検査所見"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueString = "要精密検査"
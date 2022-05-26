Instance: Inline-Instance-for-GOFSH-GENERATED-ID-21-9
InstanceOf: JP_Observation_eMunicipalCheckup_Group
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup_Group"

* status = #final
* category = $observation-category#imaging
* code = $observationGroup_codes_cs#9P500 "胸部エックス線検査"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* hasMember[0] = Reference(urn:uuid:cde1fec2-f8af-a793-7fe0-c2c417c9c000)
* hasMember[+] = Reference(urn:uuid:51424f15-c213-00bf-5d31-4770244b4f32)
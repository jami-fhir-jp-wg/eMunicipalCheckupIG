Instance: Inline-Instance-for-GOFSH-GENERATED-ID-23-10
InstanceOf: Observation
Usage: #inline
* meta.profile = "http://jpfhir.jp/fhir/eMunicipalCheckup/StructureDefinition/JP_Observation_eMunicipalCheckup"
* status = #final
* category = $observation-category#imaging
* code = $jlac10_cs#9N281000000000011 "乳がん検診のマンモグラフィー検査判定"
* subject = Reference(urn:uuid:4bc68294-1895-d159-655b-1bc7e83f52f3)
* valueCodeableConcept = urn:oid:1.2.392.100495.100.2200#3 "カテゴリー３（良性、しかし悪性を否定できず）"
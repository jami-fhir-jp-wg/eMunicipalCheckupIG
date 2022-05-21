Profile:        JP_Practitioner_CUPIX
Parent:         JP_Practitioner
Id:             JP-Practitioner-CUPIX
Description:    "TBD"
* ^url = "http://jpfhir.jp/fhir/CUPIX/StructureDefinition/JP-Practitioner-CUPIX"

* ^status = #draft

* name ^slicing.discriminator.type = #value
* name ^slicing.discriminator.path = "extension.value[x]"
* name ^slicing.rules = #open
* name contains
    IDE 1..1 and
    SYL 0..1 and
    @default 0..*
* name[IDE] only JP_HumanName
* name[SYL] only JP_HumanName

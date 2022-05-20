Extension: Composition_clinicaldocument_versionNumber
Id: composition-clinicaldocument-versionNumber
Description: "Version specific identifier for the composition, assigned when each version is created/updated."
* ^extension[0].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-wg"
* ^extension[=].valueCode = #sd
* ^extension[+].url = "http://hl7.org/fhir/StructureDefinition/structuredefinition-fmm"
* ^extension[=].valueInteger = 1
* ^url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber"
* ^status = #draft
* ^date = "2015-03-17"
* ^publisher = "Health Level Seven, Inc. - Structured Documents WG"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "http://hl7.org/special/committees/structure"
* ^context.type = #element
* ^context.expression = "Composition"
* . 0..1
* . ^short = "Version-specific identifier for composition"
* . ^definition = "Version specific identifier for the composition, assigned when each version is created/updated."
* . ^comment = "While each resource, including the composition itself, has its own version identifier, this is a formal identifier for the logical version of the composition as a whole. It would remain constant if the resources were moved to a new server, and all got new individual resource versions, for example."
* url = "http://hl7.org/fhir/StructureDefinition/composition-clinicaldocument-versionNumber" (exactly)
* value[x] 1..
* value[x] only string